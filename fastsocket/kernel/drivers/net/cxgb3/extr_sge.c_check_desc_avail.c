
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sge_txq {unsigned int size; unsigned int in_use; int stops; int sendq; } ;
struct sge_qset {int txq_stopped; } ;
struct adapter {int dummy; } ;


 int __skb_queue_tail (int *,struct sk_buff*) ;
 int set_bit (unsigned int,int *) ;
 scalar_t__ should_restart_tx (struct sge_txq*) ;
 int skb_queue_empty (int *) ;
 int smp_mb__after_clear_bit () ;
 scalar_t__ test_and_clear_bit (unsigned int,int *) ;
 struct sge_qset* txq_to_qset (struct sge_txq*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int check_desc_avail(struct adapter *adap, struct sge_txq *q,
       struct sk_buff *skb, unsigned int ndesc,
       unsigned int qid)
{
 if (unlikely(!skb_queue_empty(&q->sendq))) {
       addq_exit:__skb_queue_tail(&q->sendq, skb);
  return 1;
 }
 if (unlikely(q->size - q->in_use < ndesc)) {
  struct sge_qset *qs = txq_to_qset(q, qid);

  set_bit(qid, &qs->txq_stopped);
  smp_mb__after_clear_bit();

  if (should_restart_tx(q) &&
      test_and_clear_bit(qid, &qs->txq_stopped))
   return 2;

  q->stops++;
  goto addq_exit;
 }
 return 0;
}
