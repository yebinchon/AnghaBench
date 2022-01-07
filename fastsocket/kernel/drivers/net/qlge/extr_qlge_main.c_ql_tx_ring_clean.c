
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring_desc {int * skb; int map_cnt; int index; } ;
struct tx_ring {int wq_len; struct tx_ring_desc* q; } ;
struct ql_adapter {int tx_ring_count; int ndev; struct tx_ring* tx_ring; } ;


 int dev_kfree_skb (int *) ;
 int ifdown ;
 int netif_err (struct ql_adapter*,int ,int ,char*,int *,int,int ) ;
 int ql_unmap_send (struct ql_adapter*,struct tx_ring_desc*,int ) ;

__attribute__((used)) static void ql_tx_ring_clean(struct ql_adapter *qdev)
{
 struct tx_ring *tx_ring;
 struct tx_ring_desc *tx_ring_desc;
 int i, j;





 for (j = 0; j < qdev->tx_ring_count; j++) {
  tx_ring = &qdev->tx_ring[j];
  for (i = 0; i < tx_ring->wq_len; i++) {
   tx_ring_desc = &tx_ring->q[i];
   if (tx_ring_desc && tx_ring_desc->skb) {
    netif_err(qdev, ifdown, qdev->ndev,
       "Freeing lost SKB %p, from queue %d, index %d.\n",
       tx_ring_desc->skb, j,
       tx_ring_desc->index);
    ql_unmap_send(qdev, tx_ring_desc,
           tx_ring_desc->map_cnt);
    dev_kfree_skb(tx_ring_desc->skb);
    tx_ring_desc->skb = ((void*)0);
   }
  }
 }
}
