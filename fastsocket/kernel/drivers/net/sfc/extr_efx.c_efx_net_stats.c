
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {scalar_t__ tx_window_errors; scalar_t__ tx_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_length_errors; scalar_t__ rx_errors; int rx_missed_errors; int rx_fifo_errors; int collisions; int multicast; int rx_dropped; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct efx_mac_stats {scalar_t__ tx_bad; scalar_t__ rx_symbol_error; scalar_t__ tx_late_collision; int rx_missed; int rx_overflow; scalar_t__ rx_align_error; scalar_t__ rx_bad; scalar_t__ rx_length_error; scalar_t__ rx_gtjumbo; int tx_collision; int rx_multicast; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct efx_nic {int stats_lock; int n_rx_nodesc_drop_cnt; TYPE_1__* type; struct efx_mac_stats mac_stats; } ;
struct TYPE_2__ {int (* update_stats ) (struct efx_nic*) ;} ;


 struct efx_nic* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static struct net_device_stats *efx_net_stats(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_mac_stats *mac_stats = &efx->mac_stats;
 struct net_device_stats *stats = &net_dev->stats;

 spin_lock_bh(&efx->stats_lock);

 efx->type->update_stats(efx);

 stats->rx_packets = mac_stats->rx_packets;
 stats->tx_packets = mac_stats->tx_packets;
 stats->rx_bytes = mac_stats->rx_bytes;
 stats->tx_bytes = mac_stats->tx_bytes;
 stats->rx_dropped = efx->n_rx_nodesc_drop_cnt;
 stats->multicast = mac_stats->rx_multicast;
 stats->collisions = mac_stats->tx_collision;
 stats->rx_length_errors = (mac_stats->rx_gtjumbo +
       mac_stats->rx_length_error);
 stats->rx_crc_errors = mac_stats->rx_bad;
 stats->rx_frame_errors = mac_stats->rx_align_error;
 stats->rx_fifo_errors = mac_stats->rx_overflow;
 stats->rx_missed_errors = mac_stats->rx_missed;
 stats->tx_window_errors = mac_stats->tx_late_collision;

 stats->rx_errors = (stats->rx_length_errors +
       stats->rx_crc_errors +
       stats->rx_frame_errors +
       mac_stats->rx_symbol_error);
 stats->tx_errors = (stats->tx_window_errors +
       mac_stats->tx_bad);

 spin_unlock_bh(&efx->stats_lock);

 return stats;
}
