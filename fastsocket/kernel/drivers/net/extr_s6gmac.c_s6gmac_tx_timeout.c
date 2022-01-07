
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6gmac {int lock; } ;
struct net_device {int dummy; } ;


 struct s6gmac* netdev_priv (struct net_device*) ;
 int s6gmac_tx_interrupt (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void s6gmac_tx_timeout(struct net_device *dev)
{
 struct s6gmac *pd = netdev_priv(dev);
 unsigned long flags;
 spin_lock_irqsave(&pd->lock, flags);
 s6gmac_tx_interrupt(dev);
 spin_unlock_irqrestore(&pd->lock, flags);
}
