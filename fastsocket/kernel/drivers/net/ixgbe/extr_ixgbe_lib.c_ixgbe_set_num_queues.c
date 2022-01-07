
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int num_rx_queues; int num_tx_queues; int num_rx_pools; int num_rx_queues_per_pool; } ;


 scalar_t__ ixgbe_set_dcb_queues (struct ixgbe_adapter*) ;
 scalar_t__ ixgbe_set_dcb_sriov_queues (struct ixgbe_adapter*) ;
 int ixgbe_set_rss_queues (struct ixgbe_adapter*) ;
 scalar_t__ ixgbe_set_sriov_queues (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_set_num_queues(struct ixgbe_adapter *adapter)
{

 adapter->num_rx_queues = 1;
 adapter->num_tx_queues = 1;
 adapter->num_rx_pools = adapter->num_rx_queues;
 adapter->num_rx_queues_per_pool = 1;
 if (ixgbe_set_sriov_queues(adapter))
  return;

 ixgbe_set_rss_queues(adapter);
}
