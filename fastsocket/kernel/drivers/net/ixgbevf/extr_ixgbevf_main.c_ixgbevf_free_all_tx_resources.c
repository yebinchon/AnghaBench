
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbevf_adapter {int num_tx_queues; TYPE_1__* tx_ring; } ;
struct TYPE_2__ {scalar_t__ desc; } ;


 int ixgbevf_free_tx_resources (struct ixgbevf_adapter*,TYPE_1__*) ;

__attribute__((used)) static void ixgbevf_free_all_tx_resources(struct ixgbevf_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  if (adapter->tx_ring[i].desc)
   ixgbevf_free_tx_resources(adapter,
        &adapter->tx_ring[i]);

}
