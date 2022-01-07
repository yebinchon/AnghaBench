
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_3__ {scalar_t__ count; } ;
struct ixgbe_q_vector {void* itr; TYPE_2__ rx; TYPE_1__ tx; } ;
struct ixgbe_adapter {int rx_itr_setting; int tx_itr_setting; int num_q_vectors; struct ixgbe_q_vector** q_vector; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int rx_coalesce_usecs; } ;


 int EINVAL ;
 void* IXGBE_10K_ITR ;
 void* IXGBE_20K_ITR ;
 int IXGBE_MAX_EITR ;
 int ixgbe_do_reset (struct net_device*) ;
 int ixgbe_update_rsc (struct ixgbe_adapter*,struct ethtool_coalesce*) ;
 int ixgbe_write_eitr (struct ixgbe_q_vector*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_set_coalesce(struct net_device *netdev,
                              struct ethtool_coalesce *ec)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_q_vector *q_vector;
 int i;
 u16 tx_itr_param, rx_itr_param;
 bool need_reset = 0;


 if (adapter->q_vector[0]->tx.count && adapter->q_vector[0]->rx.count
     && ec->tx_coalesce_usecs)
  return -EINVAL;

 if ((ec->rx_coalesce_usecs > (IXGBE_MAX_EITR >> 2)) ||
     (ec->tx_coalesce_usecs > (IXGBE_MAX_EITR >> 2)))
  return -EINVAL;


 need_reset = ixgbe_update_rsc(adapter, ec);

 if (ec->rx_coalesce_usecs > 1)
  adapter->rx_itr_setting = ec->rx_coalesce_usecs << 2;
 else
  adapter->rx_itr_setting = ec->rx_coalesce_usecs;

 if (adapter->rx_itr_setting == 1)
  rx_itr_param = IXGBE_20K_ITR;
 else
  rx_itr_param = adapter->rx_itr_setting;

 if (ec->tx_coalesce_usecs > 1)
  adapter->tx_itr_setting = ec->tx_coalesce_usecs << 2;
 else
  adapter->tx_itr_setting = ec->tx_coalesce_usecs;

 if (adapter->tx_itr_setting == 1)
  tx_itr_param = IXGBE_10K_ITR;
 else
  tx_itr_param = adapter->tx_itr_setting;

 for (i = 0; i < adapter->num_q_vectors; i++) {
  q_vector = adapter->q_vector[i];
  if (q_vector->tx.count && !q_vector->rx.count)

   q_vector->itr = tx_itr_param;
  else

   q_vector->itr = rx_itr_param;
  ixgbe_write_eitr(q_vector);
 }






 if (need_reset)
  ixgbe_do_reset(netdev);

 return 0;
}
