
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct mcast_data {struct sockaddr_in* mcast_addr; } ;


 int net_sendto (int,void*,int,struct sockaddr_in*,int) ;

int mcast_user_write(int fd, void *buf, int len, struct mcast_data *pri)
{
 struct sockaddr_in *data_addr = pri->mcast_addr;

 return net_sendto(fd, buf, len, data_addr, sizeof(*data_addr));
}
