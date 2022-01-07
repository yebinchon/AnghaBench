
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; } ;
struct cp_private {int lock; } ;


 int __cp_get_stats (struct cp_private*) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_device_present (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct net_device_stats *cp_get_stats(struct net_device *dev)
{
 struct cp_private *cp = netdev_priv(dev);
 unsigned long flags;


 spin_lock_irqsave(&cp->lock, flags);
  if (netif_running(dev) && netif_device_present(dev))
   __cp_get_stats(cp);
 spin_unlock_irqrestore(&cp->lock, flags);

 return &dev->stats;
}
