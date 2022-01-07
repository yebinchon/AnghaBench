
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip {int rx_over_errors; int rx_errors; int tx_errors; int tx_dropped; int rx_dropped; int tx_packets; int rx_packets; } ;
struct net_device_stats {int rx_over_errors; int rx_errors; int tx_errors; int tx_dropped; int rx_dropped; int tx_packets; int rx_packets; } ;
struct net_device {int dummy; } ;


 int memset (struct net_device_stats*,int ,int) ;
 struct strip* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *strip_get_stats(struct net_device *dev)
{
 struct strip *strip_info = netdev_priv(dev);
 static struct net_device_stats stats;

 memset(&stats, 0, sizeof(struct net_device_stats));

 stats.rx_packets = strip_info->rx_packets;
 stats.tx_packets = strip_info->tx_packets;
 stats.rx_dropped = strip_info->rx_dropped;
 stats.tx_dropped = strip_info->tx_dropped;
 stats.tx_errors = strip_info->tx_errors;
 stats.rx_errors = strip_info->rx_errors;
 stats.rx_over_errors = strip_info->rx_over_errors;
 return (&stats);
}
