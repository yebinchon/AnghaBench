
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct de_private {struct net_device_stats net_stats; int lock; } ;


 int __de_get_stats (struct de_private*) ;
 struct de_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_device_present (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct net_device_stats *de_get_stats(struct net_device *dev)
{
 struct de_private *de = netdev_priv(dev);


 spin_lock_irq(&de->lock);
  if (netif_running(dev) && netif_device_present(dev))
   __de_get_stats(de);
 spin_unlock_irq(&de->lock);

 return &de->net_stats;
}
