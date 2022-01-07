
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int tx_max_coalesced_frames; int rx_max_coalesced_frames; int tx_coalesce_usecs; int rx_coalesce_usecs; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int rx_max_coalesced_frames; int tx_coalesce_usecs; int rx_coalesce_usecs; } ;


 struct ql_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ql_get_coalesce(struct net_device *dev, struct ethtool_coalesce *c)
{
 struct ql_adapter *qdev = netdev_priv(dev);

 c->rx_coalesce_usecs = qdev->rx_coalesce_usecs;
 c->tx_coalesce_usecs = qdev->tx_coalesce_usecs;
 c->rx_max_coalesced_frames = qdev->rx_max_coalesced_frames;
 c->tx_max_coalesced_frames = qdev->tx_max_coalesced_frames;

 return 0;
}
