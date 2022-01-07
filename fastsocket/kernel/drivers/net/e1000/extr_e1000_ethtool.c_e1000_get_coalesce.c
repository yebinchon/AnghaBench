
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;
struct TYPE_2__ {scalar_t__ mac_type; } ;
struct e1000_adapter {int itr_setting; TYPE_1__ hw; } ;


 int EOPNOTSUPP ;
 scalar_t__ e1000_82545 ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_get_coalesce(struct net_device *netdev,
         struct ethtool_coalesce *ec)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 if (adapter->hw.mac_type < e1000_82545)
  return -EOPNOTSUPP;

 if (adapter->itr_setting <= 4)
  ec->rx_coalesce_usecs = adapter->itr_setting;
 else
  ec->rx_coalesce_usecs = 1000000 / adapter->itr_setting;

 return 0;
}
