
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct sge_txq {size_t in_use; size_t size; size_t pidx; int gen; int cntxt_id; int lock; int stops; int sendq; int * desc; } ;
struct sge_qset {int adap; int txq_stopped; struct sge_txq* txq; } ;


 int A_SG_KDOORBELL ;
 int F_SELEGRCNTX ;
 size_t TXQ_CTRL ;
 int V_EGRCNTX (int ) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int reclaim_completed_tx_imm (struct sge_txq*) ;
 int set_bit (size_t,int *) ;
 scalar_t__ should_restart_tx (struct sge_txq*) ;
 int skb_queue_empty (int *) ;
 int smp_mb__after_clear_bit () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t3_write_reg (int ,int ,int) ;
 scalar_t__ test_and_clear_bit (size_t,int *) ;
 int wmb () ;
 int write_imm (int *,struct sk_buff*,int ,int) ;

__attribute__((used)) static void restart_ctrlq(unsigned long data)
{
 struct sk_buff *skb;
 struct sge_qset *qs = (struct sge_qset *)data;
 struct sge_txq *q = &qs->txq[TXQ_CTRL];

 spin_lock(&q->lock);
      again:reclaim_completed_tx_imm(q);

 while (q->in_use < q->size &&
        (skb = __skb_dequeue(&q->sendq)) != ((void*)0)) {

  write_imm(&q->desc[q->pidx], skb, skb->len, q->gen);

  if (++q->pidx >= q->size) {
   q->pidx = 0;
   q->gen ^= 1;
  }
  q->in_use++;
 }

 if (!skb_queue_empty(&q->sendq)) {
  set_bit(TXQ_CTRL, &qs->txq_stopped);
  smp_mb__after_clear_bit();

  if (should_restart_tx(q) &&
      test_and_clear_bit(TXQ_CTRL, &qs->txq_stopped))
   goto again;
  q->stops++;
 }

 spin_unlock(&q->lock);
 wmb();
 t3_write_reg(qs->adap, A_SG_KDOORBELL,
       F_SELEGRCNTX | V_EGRCNTX(q->cntxt_id));
}
