
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {unsigned int priority; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_7__ {size_t pidx; unsigned long stops; int * desc; } ;
struct sge_ctrl_txq {TYPE_6__ sendq; TYPE_1__ q; int adap; scalar_t__ full; } ;
struct fw_wr_hdr {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ TXQ_STOP_THRES ;
 struct sk_buff* __skb_dequeue (TYPE_6__*) ;
 int ctrlq_check_stop (struct sge_ctrl_txq*,struct fw_wr_hdr*) ;
 int inline_tx_skb (struct sk_buff*,TYPE_1__*,struct fw_wr_hdr*) ;
 int kfree_skb (struct sk_buff*) ;
 int reclaim_completed_tx_imm (TYPE_1__*) ;
 int ring_tx_db (int ,TYPE_1__*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int txq_advance (TYPE_1__*,unsigned int) ;
 scalar_t__ txq_avail (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void restart_ctrlq(unsigned long data)
{
 struct sk_buff *skb;
 unsigned int written = 0;
 struct sge_ctrl_txq *q = (struct sge_ctrl_txq *)data;

 spin_lock(&q->sendq.lock);
 reclaim_completed_tx_imm(&q->q);
 BUG_ON(txq_avail(&q->q) < TXQ_STOP_THRES);

 while ((skb = __skb_dequeue(&q->sendq)) != ((void*)0)) {
  struct fw_wr_hdr *wr;
  unsigned int ndesc = skb->priority;





  spin_unlock(&q->sendq.lock);

  wr = (struct fw_wr_hdr *)&q->q.desc[q->q.pidx];
  inline_tx_skb(skb, &q->q, wr);
  kfree_skb(skb);

  written += ndesc;
  txq_advance(&q->q, ndesc);
  if (unlikely(txq_avail(&q->q) < TXQ_STOP_THRES)) {
   unsigned long old = q->q.stops;

   ctrlq_check_stop(q, wr);
   if (q->q.stops != old) {
    spin_lock(&q->sendq.lock);
    goto ringdb;
   }
  }
  if (written > 16) {
   ring_tx_db(q->adap, &q->q, written);
   written = 0;
  }
  spin_lock(&q->sendq.lock);
 }
 q->full = 0;
ringdb: if (written)
  ring_tx_db(q->adap, &q->q, written);
 spin_unlock(&q->sendq.lock);
}
