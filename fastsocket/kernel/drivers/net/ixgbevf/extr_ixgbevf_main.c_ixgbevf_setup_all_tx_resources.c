
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int num_tx_queues; int hw; int * tx_ring; } ;


 int hw_dbg (int *,char*,int) ;
 int ixgbevf_setup_tx_resources (struct ixgbevf_adapter*,int *) ;

__attribute__((used)) static int ixgbevf_setup_all_tx_resources(struct ixgbevf_adapter *adapter)
{
 int i, err = 0;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  err = ixgbevf_setup_tx_resources(adapter, &adapter->tx_ring[i]);
  if (!err)
   continue;
  hw_dbg(&adapter->hw,
         "Allocation for Tx Queue %u failed\n", i);
  break;
 }

 return err;
}
