
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int num_q_vectors; int num_rx_queues; int num_tx_queues; int flags; } ;


 int DIV_ROUND_UP (int,int) ;
 int ENOMEM ;
 int IXGBE_FLAG_MSIX_ENABLED ;
 int ixgbe_alloc_q_vector (struct ixgbe_adapter*,int,int,int,int,int,int) ;
 int ixgbe_free_q_vector (struct ixgbe_adapter*,int) ;

__attribute__((used)) static int ixgbe_alloc_q_vectors(struct ixgbe_adapter *adapter)
{
 int q_vectors = adapter->num_q_vectors;
 int rxr_remaining = adapter->num_rx_queues;
 int txr_remaining = adapter->num_tx_queues;
 int rxr_idx = 0, txr_idx = 0, v_idx = 0;
 int err;


 if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED))
  q_vectors = 1;

 if (q_vectors >= (rxr_remaining + txr_remaining)) {
  for (; rxr_remaining; v_idx++) {
   err = ixgbe_alloc_q_vector(adapter, q_vectors, v_idx,
         0, 0, 1, rxr_idx);

   if (err)
    goto err_out;


   rxr_remaining--;
   rxr_idx++;
  }
 }

 for (; v_idx < q_vectors; v_idx++) {
  int rqpv = DIV_ROUND_UP(rxr_remaining, q_vectors - v_idx);
  int tqpv = DIV_ROUND_UP(txr_remaining, q_vectors - v_idx);
  err = ixgbe_alloc_q_vector(adapter, q_vectors, v_idx,
        tqpv, txr_idx,
        rqpv, rxr_idx);

  if (err)
   goto err_out;


  rxr_remaining -= rqpv;
  txr_remaining -= tqpv;
  rxr_idx++;
  txr_idx++;
 }

 return 0;

err_out:
 adapter->num_tx_queues = 0;
 adapter->num_rx_queues = 0;
 adapter->num_q_vectors = 0;

 while (v_idx--)
  ixgbe_free_q_vector(adapter, v_idx);

 return -ENOMEM;
}
