
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_local {struct net_device_stats stats; int lock; } ;
struct net_device {int dummy; } ;


 struct net_local* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_rx_stats (struct net_device_stats*) ;
 int update_tx_stats (struct net_device_stats*) ;

__attribute__((used)) static struct net_device_stats *
e100_get_stats(struct net_device *dev)
{
 struct net_local *lp = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&lp->lock, flags);

 update_rx_stats(&lp->stats);
 update_tx_stats(&lp->stats);

 spin_unlock_irqrestore(&lp->lock, flags);
 return &lp->stats;
}
