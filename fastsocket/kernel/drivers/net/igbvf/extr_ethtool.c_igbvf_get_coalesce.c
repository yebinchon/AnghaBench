
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igbvf_adapter {int requested_itr; int current_itr; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;


 struct igbvf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igbvf_get_coalesce(struct net_device *netdev,
                              struct ethtool_coalesce *ec)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 if (adapter->requested_itr <= 3)
  ec->rx_coalesce_usecs = adapter->requested_itr;
 else
  ec->rx_coalesce_usecs = adapter->current_itr >> 2;

 return 0;
}
