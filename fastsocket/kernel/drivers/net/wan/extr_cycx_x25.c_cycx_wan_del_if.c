
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wan_device {int dummy; } ;
struct net_device {int dummy; } ;
struct cycx_x25_channel {scalar_t__ state; int timer; int local_addr; scalar_t__ svc; } ;


 scalar_t__ WAN_CONNECTED ;
 int del_timer (int *) ;
 int kfree (int ) ;
 struct cycx_x25_channel* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cycx_wan_del_if(struct wan_device *wandev, struct net_device *dev)
{
 struct cycx_x25_channel *chan = netdev_priv(dev);

 if (chan->svc) {
  kfree(chan->local_addr);
  if (chan->state == WAN_CONNECTED)
   del_timer(&chan->timer);
 }

 return 0;
}
