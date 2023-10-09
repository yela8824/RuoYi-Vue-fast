# 该镜像需要依赖的基础镜像
FROM openjdk:8-jre-alpine
ENV TZ=Asia/Shanghai
# 声明服务运行端口
#EXPOSE 9527


ADD ./target/ruoyi.jar /opt/app.jar

WORKDIR /opt

ENTRYPOINT exec java -Xms512m -Xmx512m -jar app.jar

