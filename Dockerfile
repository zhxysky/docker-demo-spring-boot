FROM maven:3.3.3
MAINTAINER zhxysky

##此处端口设置了跟应用tomcat启动端口相同（tomcat启动端口见application.properties文件）
EXPOSE 8081

##把要运行的jar包放到一个目录下面（随意的目录，便于运行时目录填写）。 后续可以把生成jar包的过程也放到该文件里面
WORKDIR temp
##把打好的jar包添加到temp目录
ADD target/docker-demo-spring-boot-0.0.1-SNAPSHOT.jar /temp/docker-demo-spring-boot-0.0.1-SNAPSHOT.jar

## 运行 java -jar 命令，启动服务
CMD ["java","-jar","/temp/docker-demo-spring-boot-0.0.1-SNAPSHOT.jar"]