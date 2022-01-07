
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {scalar_t__ num_rx_queues; scalar_t__ num_tx_queues; } ;


 int ixgbe_free_q_vectors (struct ixgbe_adapter*) ;
 int ixgbe_reset_interrupt_capability (struct ixgbe_adapter*) ;

void ixgbe_clear_interrupt_scheme(struct ixgbe_adapter *adapter)
{
 adapter->num_tx_queues = 0;
 adapter->num_rx_queues = 0;

 ixgbe_free_q_vectors(adapter);
 ixgbe_reset_interrupt_capability(adapter);
}
