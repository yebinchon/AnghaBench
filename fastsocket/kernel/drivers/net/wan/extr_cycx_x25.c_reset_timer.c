
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cycx_x25_channel {int idle_tmout; int timer; scalar_t__ svc; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct cycx_x25_channel* netdev_priv (struct net_device*) ;

__attribute__((used)) static void reset_timer(struct net_device *dev)
{
 struct cycx_x25_channel *chan = netdev_priv(dev);

 if (chan->svc)
  mod_timer(&chan->timer, jiffies+chan->idle_tmout*HZ);
}
