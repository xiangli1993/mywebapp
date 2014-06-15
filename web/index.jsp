<%@ page import="com.gitdao.example.webapp.MyCalculator" %>
<%--
  Created by IntelliJ IDEA.
  User: xiangli
  Date: 6/15/14
  Time: 6:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script language="javascript">
        function add() {
            var a = document.getElementsByName("a")[0].value;
            var b = document.getElementsByName("b")[0].value;
            var c =  a + b;
            alert(c);
        }
    </script>
</head>
<body>
<%
    if (request.getParameter("submit") != null) {
        MyCalculator calculator = new MyCalculator();
        int mya = Integer.parseInt(request.getParameter("a"));
        int myb = Integer.parseInt(request.getParameter("b"));
        int c = calculator.add(mya, myb);

        out.println(c);
    }
%>
<form action="index.jsp" method="post">
    <input type="text" name="a">
    <input type="text" name="b">
    <input type="submit" name="submit" value="求和">
    <input type="button" name="addButton" value="JS求和" onclick="add()">
</form>
</body>
</html>
