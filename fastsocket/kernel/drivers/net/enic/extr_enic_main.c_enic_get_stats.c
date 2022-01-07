
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rx_drop; scalar_t__ rx_no_bufs; int rx_multicast_frames_ok; int rx_errors; int rx_bytes_ok; int rx_frames_ok; } ;
struct TYPE_3__ {int tx_drops; int tx_errors; int tx_bytes_ok; int tx_frames_ok; } ;
struct vnic_stats {TYPE_2__ rx; TYPE_1__ tx; } ;
struct net_device_stats {scalar_t__ rx_dropped; int rx_crc_errors; int rx_over_errors; int multicast; int rx_errors; int rx_bytes; int rx_packets; int tx_dropped; int tx_errors; int tx_bytes; int tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct enic {int rq_bad_fcs; int rq_truncated_pkts; } ;


 int enic_dev_stats_dump (struct enic*,struct vnic_stats**) ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *enic_get_stats(struct net_device *netdev)
{
 struct enic *enic = netdev_priv(netdev);
 struct net_device_stats *net_stats = &netdev->stats;
 struct vnic_stats *stats;

 enic_dev_stats_dump(enic, &stats);

 net_stats->tx_packets = stats->tx.tx_frames_ok;
 net_stats->tx_bytes = stats->tx.tx_bytes_ok;
 net_stats->tx_errors = stats->tx.tx_errors;
 net_stats->tx_dropped = stats->tx.tx_drops;

 net_stats->rx_packets = stats->rx.rx_frames_ok;
 net_stats->rx_bytes = stats->rx.rx_bytes_ok;
 net_stats->rx_errors = stats->rx.rx_errors;
 net_stats->multicast = stats->rx.rx_multicast_frames_ok;
 net_stats->rx_over_errors = enic->rq_truncated_pkts;
 net_stats->rx_crc_errors = enic->rq_bad_fcs;
 net_stats->rx_dropped = stats->rx.rx_no_bufs + stats->rx.rx_drop;

 return net_stats;
}
