
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int rx_ring_size; int tx_ring_size; int rx_coalesce_usecs; int tx_coalesce_usecs; scalar_t__ rx_max_coalesced_frames; scalar_t__ tx_max_coalesced_frames; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; scalar_t__ rx_max_coalesced_frames; int tx_coalesce_usecs; scalar_t__ tx_max_coalesced_frames; } ;


 int EINVAL ;
 scalar_t__ MAX_INTER_FRAME_WAIT ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int ql_update_ring_coalescing (struct ql_adapter*) ;

__attribute__((used)) static int ql_set_coalesce(struct net_device *ndev, struct ethtool_coalesce *c)
{
 struct ql_adapter *qdev = netdev_priv(ndev);


 if (c->rx_coalesce_usecs > qdev->rx_ring_size / 2)
  return -EINVAL;

 if (c->rx_max_coalesced_frames > MAX_INTER_FRAME_WAIT)
  return -EINVAL;
 if (c->tx_coalesce_usecs > qdev->tx_ring_size / 2)
  return -EINVAL;
 if (c->tx_max_coalesced_frames > MAX_INTER_FRAME_WAIT)
  return -EINVAL;


 if (qdev->rx_coalesce_usecs == c->rx_coalesce_usecs &&
     qdev->tx_coalesce_usecs == c->tx_coalesce_usecs &&
     qdev->rx_max_coalesced_frames == c->rx_max_coalesced_frames &&
     qdev->tx_max_coalesced_frames == c->tx_max_coalesced_frames)
  return 0;

 qdev->rx_coalesce_usecs = c->rx_coalesce_usecs;
 qdev->tx_coalesce_usecs = c->tx_coalesce_usecs;
 qdev->rx_max_coalesced_frames = c->rx_max_coalesced_frames;
 qdev->tx_max_coalesced_frames = c->tx_max_coalesced_frames;

 return ql_update_ring_coalescing(qdev);
}
