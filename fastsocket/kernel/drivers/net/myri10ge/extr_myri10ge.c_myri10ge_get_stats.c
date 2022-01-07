
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {int tx_dropped; int rx_dropped; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {int dummy; } ;
struct myri10ge_slice_netstats {scalar_t__ tx_dropped; scalar_t__ rx_dropped; scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct myri10ge_priv {int num_slices; int stats_lock; TYPE_1__* ss; struct net_device_stats stats; } ;
struct TYPE_2__ {struct myri10ge_slice_netstats stats; } ;


 int memset (struct net_device_stats*,int ,int) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct net_device_stats *myri10ge_get_stats(struct net_device *dev)
{
 struct myri10ge_priv *mgp = netdev_priv(dev);
 struct myri10ge_slice_netstats *slice_stats;
 struct net_device_stats *stats = &mgp->stats;
 int i;

 spin_lock(&mgp->stats_lock);
 memset(stats, 0, sizeof(*stats));
 for (i = 0; i < mgp->num_slices; i++) {
  slice_stats = &mgp->ss[i].stats;
  stats->rx_packets += slice_stats->rx_packets;
  stats->tx_packets += slice_stats->tx_packets;
  stats->rx_bytes += slice_stats->rx_bytes;
  stats->tx_bytes += slice_stats->tx_bytes;
  stats->rx_dropped += slice_stats->rx_dropped;
  stats->tx_dropped += slice_stats->tx_dropped;
 }
 spin_unlock(&mgp->stats_lock);
 return stats;
}
