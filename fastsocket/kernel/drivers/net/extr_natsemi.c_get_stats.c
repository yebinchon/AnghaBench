
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct netdev_private {struct net_device_stats stats; int lock; int hands_off; } ;
struct net_device {int dummy; } ;


 int __get_stats (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct net_device_stats *get_stats(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);


 spin_lock_irq(&np->lock);
 if (netif_running(dev) && !np->hands_off)
  __get_stats(dev);
 spin_unlock_irq(&np->lock);

 return &np->stats;
}
