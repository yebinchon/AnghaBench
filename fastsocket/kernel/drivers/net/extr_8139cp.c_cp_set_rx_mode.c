
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cp_private {int lock; } ;


 int __cp_set_rx_mode (struct net_device*) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cp_set_rx_mode (struct net_device *dev)
{
 unsigned long flags;
 struct cp_private *cp = netdev_priv(dev);

 spin_lock_irqsave (&cp->lock, flags);
 __cp_set_rx_mode(dev);
 spin_unlock_irqrestore (&cp->lock, flags);
}
