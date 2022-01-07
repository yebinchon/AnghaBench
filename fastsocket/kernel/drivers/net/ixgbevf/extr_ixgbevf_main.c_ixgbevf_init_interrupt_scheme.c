
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int num_rx_queues; int state; int num_tx_queues; int hw; } ;


 int __IXGBEVF_DOWN ;
 int hw_dbg (int *,char*,...) ;
 int ixgbevf_alloc_q_vectors (struct ixgbevf_adapter*) ;
 int ixgbevf_alloc_queues (struct ixgbevf_adapter*) ;
 int ixgbevf_free_q_vectors (struct ixgbevf_adapter*) ;
 int ixgbevf_reset_interrupt_capability (struct ixgbevf_adapter*) ;
 int ixgbevf_set_interrupt_capability (struct ixgbevf_adapter*) ;
 int ixgbevf_set_num_queues (struct ixgbevf_adapter*) ;
 int pr_err (char*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ixgbevf_init_interrupt_scheme(struct ixgbevf_adapter *adapter)
{
 int err;


 ixgbevf_set_num_queues(adapter);

 err = ixgbevf_set_interrupt_capability(adapter);
 if (err) {
  hw_dbg(&adapter->hw,
         "Unable to setup interrupt capabilities\n");
  goto err_set_interrupt;
 }

 err = ixgbevf_alloc_q_vectors(adapter);
 if (err) {
  hw_dbg(&adapter->hw, "Unable to allocate memory for queue "
         "vectors\n");
  goto err_alloc_q_vectors;
 }

 err = ixgbevf_alloc_queues(adapter);
 if (err) {
  pr_err("Unable to allocate memory for queues\n");
  goto err_alloc_queues;
 }

 hw_dbg(&adapter->hw, "Multiqueue %s: Rx Queue count = %u, "
        "Tx Queue count = %u\n",
        (adapter->num_rx_queues > 1) ? "Enabled" :
        "Disabled", adapter->num_rx_queues, adapter->num_tx_queues);

 set_bit(__IXGBEVF_DOWN, &adapter->state);

 return 0;
err_alloc_queues:
 ixgbevf_free_q_vectors(adapter);
err_alloc_q_vectors:
 ixgbevf_reset_interrupt_capability(adapter);
err_set_interrupt:
 return err;
}
