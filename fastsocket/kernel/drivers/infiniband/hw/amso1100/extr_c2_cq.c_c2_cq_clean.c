
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct c2wr_ce {scalar_t__ qp_user_context; } ;
struct c2_qp {int dummy; } ;
struct TYPE_2__ {scalar_t__ host; } ;
struct c2_mq {int priv; int msg_size; int q_size; TYPE_1__ msg_pool; int * shared; } ;
struct c2_dev {int dummy; } ;
struct c2_cq {int lock; struct c2_mq mq; } ;


 int be16_to_cpu (int ) ;
 struct c2_cq* c2_cq_get (struct c2_dev*,int ) ;
 int c2_cq_put (struct c2_cq*) ;
 int c2_mq_empty (struct c2_mq*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void c2_cq_clean(struct c2_dev *c2dev, struct c2_qp *qp, u32 mq_index)
{
 struct c2_cq *cq;
 struct c2_mq *q;

 cq = c2_cq_get(c2dev, mq_index);
 if (!cq)
  return;

 spin_lock_irq(&cq->lock);
 q = &cq->mq;
 if (q && !c2_mq_empty(q)) {
  u16 priv = q->priv;
  struct c2wr_ce *msg;

  while (priv != be16_to_cpu(*q->shared)) {
   msg = (struct c2wr_ce *)
    (q->msg_pool.host + priv * q->msg_size);
   if (msg->qp_user_context == (u64) (unsigned long) qp) {
    msg->qp_user_context = (u64) 0;
   }
   priv = (priv + 1) % q->q_size;
  }
 }
 spin_unlock_irq(&cq->lock);
 c2_cq_put(cq);
}
