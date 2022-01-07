
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {int restart_timer; } ;


 int can_flush_echo_skb (struct net_device*) ;
 scalar_t__ del_timer_sync (int *) ;
 int dev_put (struct net_device*) ;
 struct can_priv* netdev_priv (struct net_device*) ;

void close_candev(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);

 if (del_timer_sync(&priv->restart_timer))
  dev_put(dev);
 can_flush_echo_skb(dev);
}
