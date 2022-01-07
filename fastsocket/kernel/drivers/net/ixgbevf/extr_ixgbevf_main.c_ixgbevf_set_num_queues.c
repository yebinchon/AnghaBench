
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int num_rx_queues; int num_tx_queues; } ;



__attribute__((used)) static void ixgbevf_set_num_queues(struct ixgbevf_adapter *adapter)
{

 adapter->num_rx_queues = 1;
 adapter->num_tx_queues = 1;
}
