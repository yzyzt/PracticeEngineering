<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("name", "alarms");
		cookie.setMaxAge(7 * 24 * 60 * 60);
		response.addCookie(cookie);
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			String Name = cookie.getName();
			String value = cookie.getValue();
			if("name".equals(Name) && "alarms".equals(value)){
				request.setAttribute(Name, value);
			}else{
				
			}
		}
	%>
</body>
</html>