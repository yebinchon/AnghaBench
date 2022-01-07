
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int num_rx_queues; int num_tx_queues; int num_msix_vectors; } ;


 int DIV_ROUND_UP (int,int) ;
 int NON_Q_VECTORS ;
 int map_vector_to_rxq (struct ixgbevf_adapter*,int,int) ;
 int map_vector_to_txq (struct ixgbevf_adapter*,int,int) ;

__attribute__((used)) static int ixgbevf_map_rings_to_vectors(struct ixgbevf_adapter *adapter)
{
 int q_vectors;
 int v_start = 0;
 int rxr_idx = 0, txr_idx = 0;
 int rxr_remaining = adapter->num_rx_queues;
 int txr_remaining = adapter->num_tx_queues;
 int i, j;
 int rqpv, tqpv;
 int err = 0;

 q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;





 if (q_vectors == adapter->num_rx_queues + adapter->num_tx_queues) {
  for (; rxr_idx < rxr_remaining; v_start++, rxr_idx++)
   map_vector_to_rxq(adapter, v_start, rxr_idx);

  for (; txr_idx < txr_remaining; v_start++, txr_idx++)
   map_vector_to_txq(adapter, v_start, txr_idx);
  goto out;
 }







 for (i = v_start; i < q_vectors; i++) {
  rqpv = DIV_ROUND_UP(rxr_remaining, q_vectors - i);
  for (j = 0; j < rqpv; j++) {
   map_vector_to_rxq(adapter, i, rxr_idx);
   rxr_idx++;
   rxr_remaining--;
  }
 }
 for (i = v_start; i < q_vectors; i++) {
  tqpv = DIV_ROUND_UP(txr_remaining, q_vectors - i);
  for (j = 0; j < tqpv; j++) {
   map_vector_to_txq(adapter, i, txr_idx);
   txr_idx++;
   txr_remaining--;
  }
 }

out:
 return err;
}
