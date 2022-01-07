
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring_desc {int index; struct ob_mac_iocb_req* queue_entry; int * skb; } ;
struct tx_ring {int wq_len; int tx_count; struct tx_ring_desc* q; struct ob_mac_iocb_req* wq_base; } ;
struct ql_adapter {int dummy; } ;
struct ob_mac_iocb_req {int dummy; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static void ql_init_tx_ring(struct ql_adapter *qdev, struct tx_ring *tx_ring)
{
 struct tx_ring_desc *tx_ring_desc;
 int i;
 struct ob_mac_iocb_req *mac_iocb_ptr;

 mac_iocb_ptr = tx_ring->wq_base;
 tx_ring_desc = tx_ring->q;
 for (i = 0; i < tx_ring->wq_len; i++) {
  tx_ring_desc->index = i;
  tx_ring_desc->skb = ((void*)0);
  tx_ring_desc->queue_entry = mac_iocb_ptr;
  mac_iocb_ptr++;
  tx_ring_desc++;
 }
 atomic_set(&tx_ring->tx_count, tx_ring->wq_len);
}
