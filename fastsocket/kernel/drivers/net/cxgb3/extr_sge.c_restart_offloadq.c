
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int priority; } ;
struct sge_txq {unsigned int size; unsigned int in_use; unsigned int gen; unsigned int pidx; int cntxt_id; int flags; int lock; int sendq; int stops; } ;
struct sge_qset {int txq_stopped; int netdev; struct sge_txq* txq; } ;
struct port_info {struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 int A_SG_KDOORBELL ;
 int F_SELEGRCNTX ;
 size_t TXQ_LAST_PKT_DB ;
 size_t TXQ_OFLD ;
 size_t TXQ_RUNNING ;
 int TX_RECLAIM_CHUNK ;
 int V_EGRCNTX (int ) ;
 int __skb_unlink (struct sk_buff*,int *) ;
 struct port_info* netdev_priv (int ) ;
 int reclaim_completed_tx (struct adapter*,struct sge_txq*,int ) ;
 int set_bit (size_t,int *) ;
 scalar_t__ should_restart_tx (struct sge_txq*) ;
 struct sk_buff* skb_peek (int *) ;
 int smp_mb__after_clear_bit () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 scalar_t__ test_and_clear_bit (size_t,int *) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int write_ofld_wr (struct adapter*,struct sk_buff*,struct sge_txq*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void restart_offloadq(unsigned long data)
{
 struct sk_buff *skb;
 struct sge_qset *qs = (struct sge_qset *)data;
 struct sge_txq *q = &qs->txq[TXQ_OFLD];
 const struct port_info *pi = netdev_priv(qs->netdev);
 struct adapter *adap = pi->adapter;

 spin_lock(&q->lock);
again: reclaim_completed_tx(adap, q, TX_RECLAIM_CHUNK);

 while ((skb = skb_peek(&q->sendq)) != ((void*)0)) {
  unsigned int gen, pidx;
  unsigned int ndesc = skb->priority;

  if (unlikely(q->size - q->in_use < ndesc)) {
   set_bit(TXQ_OFLD, &qs->txq_stopped);
   smp_mb__after_clear_bit();

   if (should_restart_tx(q) &&
       test_and_clear_bit(TXQ_OFLD, &qs->txq_stopped))
    goto again;
   q->stops++;
   break;
  }

  gen = q->gen;
  q->in_use += ndesc;
  pidx = q->pidx;
  q->pidx += ndesc;
  if (q->pidx >= q->size) {
   q->pidx -= q->size;
   q->gen ^= 1;
  }
  __skb_unlink(skb, &q->sendq);
  spin_unlock(&q->lock);

  write_ofld_wr(adap, skb, q, pidx, gen, ndesc);
  spin_lock(&q->lock);
 }
 spin_unlock(&q->lock);





 wmb();
 t3_write_reg(adap, A_SG_KDOORBELL,
       F_SELEGRCNTX | V_EGRCNTX(q->cntxt_id));
}
