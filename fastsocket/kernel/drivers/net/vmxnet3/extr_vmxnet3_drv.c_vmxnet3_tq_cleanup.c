
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ next2proc; void* gen; } ;
struct TYPE_4__ {scalar_t__ next2comp; scalar_t__ next2fill; int size; void* gen; } ;
struct vmxnet3_tx_queue {TYPE_1__ comp_ring; TYPE_2__ tx_ring; struct vmxnet3_tx_buf_info* buf_info; } ;
struct vmxnet3_tx_buf_info {scalar_t__ map_type; int * skb; } ;
struct vmxnet3_adapter {int pdev; } ;


 int BUG_ON (int) ;
 void* VMXNET3_INIT_GEN ;
 scalar_t__ VMXNET3_MAP_NONE ;
 int dev_kfree_skb_any (int *) ;
 int vmxnet3_cmd_ring_adv_next2comp (TYPE_2__*) ;
 int vmxnet3_unmap_tx_buf (struct vmxnet3_tx_buf_info*,int ) ;

__attribute__((used)) static void
vmxnet3_tq_cleanup(struct vmxnet3_tx_queue *tq,
     struct vmxnet3_adapter *adapter)
{
 int i;

 while (tq->tx_ring.next2comp != tq->tx_ring.next2fill) {
  struct vmxnet3_tx_buf_info *tbi;

  tbi = tq->buf_info + tq->tx_ring.next2comp;

  vmxnet3_unmap_tx_buf(tbi, adapter->pdev);
  if (tbi->skb) {
   dev_kfree_skb_any(tbi->skb);
   tbi->skb = ((void*)0);
  }
  vmxnet3_cmd_ring_adv_next2comp(&tq->tx_ring);
 }


 for (i = 0; i < tq->tx_ring.size; i++) {
  BUG_ON(tq->buf_info[i].skb != ((void*)0) ||
         tq->buf_info[i].map_type != VMXNET3_MAP_NONE);
 }

 tq->tx_ring.gen = VMXNET3_INIT_GEN;
 tq->tx_ring.next2fill = tq->tx_ring.next2comp = 0;

 tq->comp_ring.gen = VMXNET3_INIT_GEN;
 tq->comp_ring.next2proc = 0;
}
