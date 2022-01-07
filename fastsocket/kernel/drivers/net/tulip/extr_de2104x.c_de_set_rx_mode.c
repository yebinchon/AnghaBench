
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct de_private {int lock; } ;


 int __de_set_rx_mode (struct net_device*) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void de_set_rx_mode (struct net_device *dev)
{
 unsigned long flags;
 struct de_private *de = netdev_priv(dev);

 spin_lock_irqsave (&de->lock, flags);
 __de_set_rx_mode(dev);
 spin_unlock_irqrestore (&de->lock, flags);
}
