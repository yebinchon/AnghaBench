
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {scalar_t__ tx_window_errors; scalar_t__ tx_heartbeat_errors; int tx_fifo_errors; scalar_t__ tx_carrier_errors; scalar_t__ tx_aborted_errors; int rx_missed_errors; scalar_t__ rx_fifo_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_over_errors; scalar_t__ rx_length_errors; scalar_t__ rx_errors; int tx_errors; int multicast; int rx_packets; int rx_bytes; int tx_packets; int tx_bytes; } ;
struct port_info {int mac; struct net_device_stats netstats; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct mac_stats {int tx_underrun; int rx_cong_drops; scalar_t__ rx_fifo_ovfl; scalar_t__ rx_symbol_errs; scalar_t__ rx_fcs_errs; scalar_t__ rx_too_long; scalar_t__ rx_jabber; scalar_t__ rx_short; int rx_mcast_frames; int rx_frames; int rx_octets; int tx_frames; int tx_octets; } ;
struct adapter {int stats_lock; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mac_stats* t3_mac_update_stats (int *) ;

__attribute__((used)) static struct net_device_stats *cxgb_get_stats(struct net_device *dev)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 struct net_device_stats *ns = &pi->netstats;
 const struct mac_stats *pstats;

 spin_lock(&adapter->stats_lock);
 pstats = t3_mac_update_stats(&pi->mac);
 spin_unlock(&adapter->stats_lock);

 ns->tx_bytes = pstats->tx_octets;
 ns->tx_packets = pstats->tx_frames;
 ns->rx_bytes = pstats->rx_octets;
 ns->rx_packets = pstats->rx_frames;
 ns->multicast = pstats->rx_mcast_frames;

 ns->tx_errors = pstats->tx_underrun;
 ns->rx_errors = pstats->rx_symbol_errs + pstats->rx_fcs_errs +
     pstats->rx_too_long + pstats->rx_jabber + pstats->rx_short +
     pstats->rx_fifo_ovfl;


 ns->rx_length_errors = pstats->rx_jabber + pstats->rx_too_long;
 ns->rx_over_errors = 0;
 ns->rx_crc_errors = pstats->rx_fcs_errs;
 ns->rx_frame_errors = pstats->rx_symbol_errs;
 ns->rx_fifo_errors = pstats->rx_fifo_ovfl;
 ns->rx_missed_errors = pstats->rx_cong_drops;


 ns->tx_aborted_errors = 0;
 ns->tx_carrier_errors = 0;
 ns->tx_fifo_errors = pstats->tx_underrun;
 ns->tx_heartbeat_errors = 0;
 ns->tx_window_errors = 0;
 return ns;
}
