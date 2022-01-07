
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int lock; int hands_off; } ;
struct net_device {int dummy; } ;


 int __set_rx_mode (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void set_rx_mode(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 spin_lock_irq(&np->lock);
 if (!np->hands_off)
  __set_rx_mode(dev);
 spin_unlock_irq(&np->lock);
}
