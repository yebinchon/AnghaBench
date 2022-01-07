
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {scalar_t__ tx_good_octets; } ;
struct b44 {int lock; TYPE_1__ hw_stats; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int b44_gstrings ;
 int b44_stats_update (struct b44*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void b44_get_ethtool_stats(struct net_device *dev,
      struct ethtool_stats *stats, u64 *data)
{
 struct b44 *bp = netdev_priv(dev);
 u32 *val = &bp->hw_stats.tx_good_octets;
 u32 i;

 spin_lock_irq(&bp->lock);

 b44_stats_update(bp);

 for (i = 0; i < ARRAY_SIZE(b44_gstrings); i++)
  *data++ = *val++;

 spin_unlock_irq(&bp->lock);
}
