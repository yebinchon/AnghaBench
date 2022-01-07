
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int num_rx_queues; int state; int num_tx_queues; } ;


 int __IXGBE_DOWN ;
 int e_dev_err (char*) ;
 int e_dev_info (char*,char*,int,int ) ;
 int ixgbe_alloc_q_vectors (struct ixgbe_adapter*) ;
 int ixgbe_cache_ring_register (struct ixgbe_adapter*) ;
 int ixgbe_reset_interrupt_capability (struct ixgbe_adapter*) ;
 int ixgbe_set_interrupt_capability (struct ixgbe_adapter*) ;
 int ixgbe_set_num_queues (struct ixgbe_adapter*) ;
 int set_bit (int ,int *) ;

int ixgbe_init_interrupt_scheme(struct ixgbe_adapter *adapter)
{
 int err;


 ixgbe_set_num_queues(adapter);


 ixgbe_set_interrupt_capability(adapter);

 err = ixgbe_alloc_q_vectors(adapter);
 if (err) {
  e_dev_err("Unable to allocate memory for queue vectors\n");
  goto err_alloc_q_vectors;
 }

 ixgbe_cache_ring_register(adapter);

 e_dev_info("Multiqueue %s: Rx Queue count = %u, Tx Queue count = %u\n",
     (adapter->num_rx_queues > 1) ? "Enabled" : "Disabled",
     adapter->num_rx_queues, adapter->num_tx_queues);

 set_bit(__IXGBE_DOWN, &adapter->state);

 return 0;

err_alloc_q_vectors:
 ixgbe_reset_interrupt_capability(adapter);
 return err;
}
