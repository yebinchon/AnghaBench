
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcast_data {void* dev; int port; int addr; int mcast_addr; } ;


 int new_addr (int ,int ) ;

__attribute__((used)) static int mcast_user_init(void *data, void *dev)
{
 struct mcast_data *pri = data;

 pri->mcast_addr = new_addr(pri->addr, pri->port);
 pri->dev = dev;
 return 0;
}
