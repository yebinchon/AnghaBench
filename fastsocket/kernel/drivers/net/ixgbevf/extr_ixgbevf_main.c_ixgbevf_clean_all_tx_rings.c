
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int num_tx_queues; int * tx_ring; } ;


 int ixgbevf_clean_tx_ring (struct ixgbevf_adapter*,int *) ;

__attribute__((used)) static void ixgbevf_clean_all_tx_rings(struct ixgbevf_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  ixgbevf_clean_tx_ring(adapter, &adapter->tx_ring[i]);
}
