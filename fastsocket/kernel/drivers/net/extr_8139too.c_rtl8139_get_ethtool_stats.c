
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int rx_lost_in_ring; int tx_timeouts; int tx_buf_mapped; int early_rx; } ;
struct rtl8139_private {TYPE_1__ xstats; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 struct rtl8139_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void rtl8139_get_ethtool_stats(struct net_device *dev, struct ethtool_stats *stats, u64 *data)
{
 struct rtl8139_private *tp = netdev_priv(dev);

 data[0] = tp->xstats.early_rx;
 data[1] = tp->xstats.tx_buf_mapped;
 data[2] = tp->xstats.tx_timeouts;
 data[3] = tp->xstats.rx_lost_in_ring;
}
