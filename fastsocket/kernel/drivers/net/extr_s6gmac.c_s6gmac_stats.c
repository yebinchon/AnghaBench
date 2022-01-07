
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6gmac {int* stats; int* carry; int lock; } ;
struct net_device_stats {scalar_t__ tx_aborted_errors; int tx_errors; scalar_t__ rx_missed_errors; scalar_t__ rx_length_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_errors; } ;
struct net_device {int dummy; } ;


 int S6_GMAC_STAT_SIZE_MIN ;
 struct s6gmac* netdev_priv (struct net_device*) ;
 int s6gmac_stats_collect (struct s6gmac*,int *) ;
 int s6gmac_stats_pending (struct s6gmac*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ** statinf ;

__attribute__((used)) static struct net_device_stats *s6gmac_stats(struct net_device *dev)
{
 struct s6gmac *pd = netdev_priv(dev);
 struct net_device_stats *st = (struct net_device_stats *)&pd->stats;
 int i;
 do {
  unsigned long flags;
  spin_lock_irqsave(&pd->lock, flags);
  for (i = 0; i < sizeof(pd->stats) / sizeof(unsigned long); i++)
   pd->stats[i] =
    pd->carry[i] << (S6_GMAC_STAT_SIZE_MIN - 1);
  s6gmac_stats_collect(pd, &statinf[0][0]);
  s6gmac_stats_collect(pd, &statinf[1][0]);
  i = s6gmac_stats_pending(pd, 0) |
   s6gmac_stats_pending(pd, 1);
  spin_unlock_irqrestore(&pd->lock, flags);
 } while (i);
 st->rx_errors = st->rx_crc_errors +
   st->rx_frame_errors +
   st->rx_length_errors +
   st->rx_missed_errors;
 st->tx_errors += st->tx_aborted_errors;
 return st;
}
