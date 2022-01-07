
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tx_packets; int rx_packets; int tx_time_us; int rx_time_us; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ normal; } ;
struct TYPE_8__ {int revision_id; } ;
struct netxen_adapter {scalar_t__ is_up; TYPE_3__ coal; TYPE_4__ ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int rx_max_coalesced_frames; int tx_coalesce_usecs; int rx_coalesce_usecs; } ;


 int EINVAL ;
 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ;
 int NX_IS_REVISION_P3 (int ) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netxen_get_intr_coalesce(struct net_device *netdev,
   struct ethtool_coalesce *ethcoal)
{
 struct netxen_adapter *adapter = netdev_priv(netdev);

 if (!NX_IS_REVISION_P3(adapter->ahw.revision_id))
  return -EINVAL;

 if (adapter->is_up != NETXEN_ADAPTER_UP_MAGIC)
  return -EINVAL;

 ethcoal->rx_coalesce_usecs = adapter->coal.normal.data.rx_time_us;
 ethcoal->tx_coalesce_usecs = adapter->coal.normal.data.tx_time_us;
 ethcoal->rx_max_coalesced_frames =
  adapter->coal.normal.data.rx_packets;
 ethcoal->tx_max_coalesced_frames =
  adapter->coal.normal.data.tx_packets;

 return 0;
}
