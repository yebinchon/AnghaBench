
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct tg3 {int lock; struct net_device_stats net_stats_prev; int hw_stats; struct net_device_stats net_stats; } ;
struct net_device {int dummy; } ;


 struct tg3* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tg3_get_nstats (struct tg3*) ;

__attribute__((used)) static struct net_device_stats *tg3_get_stats(struct net_device *dev)
{
 struct tg3 *tp = netdev_priv(dev);
 struct net_device_stats *stats = &tp->net_stats;

 spin_lock_bh(&tp->lock);
 if (!tp->hw_stats) {
  spin_unlock_bh(&tp->lock);
  return &tp->net_stats_prev;
 }

 tg3_get_nstats(tp);
 spin_unlock_bh(&tp->lock);

 return stats;
}
