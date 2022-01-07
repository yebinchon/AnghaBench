
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int tx_carrier_errors; scalar_t__ tx_aborted_errors; scalar_t__ rx_errors; scalar_t__ rx_crc_errors; scalar_t__ rx_frame_errors; scalar_t__ rx_over_errors; scalar_t__ rx_length_errors; int collisions; int multicast; scalar_t__ tx_errors; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct b44_hw_stats {int tx_carrier_lost; scalar_t__ tx_underruns; scalar_t__ rx_symbol_errs; scalar_t__ rx_align_errs; scalar_t__ rx_crc_errs; scalar_t__ rx_undersize; scalar_t__ rx_crc_align_errs; scalar_t__ rx_missed_pkts; scalar_t__ rx_oversize_pkts; scalar_t__ rx_jabber_pkts; int tx_total_cols; int tx_multicast_pkts; scalar_t__ tx_late_cols; scalar_t__ tx_excessive_cols; scalar_t__ tx_oversize_pkts; scalar_t__ tx_jabber_pkts; int tx_octets; int rx_octets; int tx_pkts; int rx_pkts; } ;
struct b44 {struct b44_hw_stats hw_stats; } ;


 struct b44* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *b44_get_stats(struct net_device *dev)
{
 struct b44 *bp = netdev_priv(dev);
 struct net_device_stats *nstat = &dev->stats;
 struct b44_hw_stats *hwstat = &bp->hw_stats;


 nstat->rx_packets = hwstat->rx_pkts;
 nstat->tx_packets = hwstat->tx_pkts;
 nstat->rx_bytes = hwstat->rx_octets;
 nstat->tx_bytes = hwstat->tx_octets;
 nstat->tx_errors = (hwstat->tx_jabber_pkts +
        hwstat->tx_oversize_pkts +
        hwstat->tx_underruns +
        hwstat->tx_excessive_cols +
        hwstat->tx_late_cols);
 nstat->multicast = hwstat->tx_multicast_pkts;
 nstat->collisions = hwstat->tx_total_cols;

 nstat->rx_length_errors = (hwstat->rx_oversize_pkts +
       hwstat->rx_undersize);
 nstat->rx_over_errors = hwstat->rx_missed_pkts;
 nstat->rx_frame_errors = hwstat->rx_align_errs;
 nstat->rx_crc_errors = hwstat->rx_crc_errs;
 nstat->rx_errors = (hwstat->rx_jabber_pkts +
       hwstat->rx_oversize_pkts +
       hwstat->rx_missed_pkts +
       hwstat->rx_crc_align_errs +
       hwstat->rx_undersize +
       hwstat->rx_crc_errs +
       hwstat->rx_align_errs +
       hwstat->rx_symbol_errs);

 nstat->tx_aborted_errors = hwstat->tx_underruns;





 return nstat;
}
