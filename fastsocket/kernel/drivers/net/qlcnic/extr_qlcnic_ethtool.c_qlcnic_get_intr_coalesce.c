
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {scalar_t__ is_up; TYPE_2__* ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int tx_coalesce_usecs; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;
struct TYPE_3__ {int tx_packets; int tx_time_us; int rx_packets; int rx_time_us; } ;
struct TYPE_4__ {TYPE_1__ coal; } ;


 int EINVAL ;
 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int qlcnic_get_intr_coalesce(struct net_device *netdev,
   struct ethtool_coalesce *ethcoal)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);

 if (adapter->is_up != QLCNIC_ADAPTER_UP_MAGIC)
  return -EINVAL;

 ethcoal->rx_coalesce_usecs = adapter->ahw->coal.rx_time_us;
 ethcoal->rx_max_coalesced_frames = adapter->ahw->coal.rx_packets;
 ethcoal->tx_coalesce_usecs = adapter->ahw->coal.tx_time_us;
 ethcoal->tx_max_coalesced_frames = adapter->ahw->coal.tx_packets;

 return 0;
}
