
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct korina_private {int lock; } ;


 int korina_restart (struct net_device*) ;
 struct korina_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void korina_tx_timeout(struct net_device *dev)
{
 struct korina_private *lp = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&lp->lock, flags);
 korina_restart(dev);
 spin_unlock_irqrestore(&lp->lock, flags);
}
