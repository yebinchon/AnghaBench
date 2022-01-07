
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int dummy; } ;
struct daemon_data {struct sockaddr_un* data_addr; } ;


 int net_sendto (int,void*,int,struct sockaddr_un*,int) ;

int daemon_user_write(int fd, void *buf, int len, struct daemon_data *pri)
{
 struct sockaddr_un *data_addr = pri->data_addr;

 return net_sendto(fd, buf, len, data_addr, sizeof(*data_addr));
}
