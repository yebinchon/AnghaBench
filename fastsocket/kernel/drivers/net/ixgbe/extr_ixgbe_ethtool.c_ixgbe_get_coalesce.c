
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_adapter {int rx_itr_setting; int tx_itr_setting; TYPE_3__** q_vector; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; int tx_coalesce_usecs; } ;
struct TYPE_5__ {scalar_t__ count; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_6__ {TYPE_2__ rx; TYPE_1__ tx; } ;


 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_get_coalesce(struct net_device *netdev,
                              struct ethtool_coalesce *ec)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);


 if (adapter->rx_itr_setting <= 1)
  ec->rx_coalesce_usecs = adapter->rx_itr_setting;
 else
  ec->rx_coalesce_usecs = adapter->rx_itr_setting >> 2;


 if (adapter->q_vector[0]->tx.count && adapter->q_vector[0]->rx.count)
  return 0;


 if (adapter->tx_itr_setting <= 1)
  ec->tx_coalesce_usecs = adapter->tx_itr_setting;
 else
  ec->tx_coalesce_usecs = adapter->tx_itr_setting >> 2;

 return 0;
}
