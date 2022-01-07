
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {struct slcompress* slcomp; int tx_misses; int tx_compressed; int rx_compressed; int rx_over_errors; int rx_errors; int tx_errors; int tx_dropped; int rx_dropped; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct slcompress {scalar_t__ sls_o_misses; scalar_t__ sls_o_compressed; scalar_t__ sls_i_tossed; scalar_t__ sls_i_compressed; } ;
struct net_device_stats {int collisions; int tx_fifo_errors; int rx_dropped; int rx_fifo_errors; int rx_over_errors; int rx_errors; int tx_errors; int tx_dropped; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {int dummy; } ;


 int memset (struct net_device_stats*,int ,int) ;
 struct slip* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *
sl_get_stats(struct net_device *dev)
{
 static struct net_device_stats stats;
 struct slip *sl = netdev_priv(dev);




 memset(&stats, 0, sizeof(struct net_device_stats));

 stats.rx_packets = sl->rx_packets;
 stats.tx_packets = sl->tx_packets;
 stats.rx_bytes = sl->rx_bytes;
 stats.tx_bytes = sl->tx_bytes;
 stats.rx_dropped = sl->rx_dropped;
 stats.tx_dropped = sl->tx_dropped;
 stats.tx_errors = sl->tx_errors;
 stats.rx_errors = sl->rx_errors;
 stats.rx_over_errors = sl->rx_over_errors;
 return (&stats);
}
