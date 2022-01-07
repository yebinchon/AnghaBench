
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp {int rq_entry; int rq_cq; int srq; int sq_entry; int sq_cq; struct ocrdma_dev* dev; } ;
struct ocrdma_dev {int flush_q_lock; } ;


 int list_del (int *) ;
 int ocrdma_is_qp_in_rq_flushlist (int ,struct ocrdma_qp*) ;
 int ocrdma_is_qp_in_sq_flushlist (int ,struct ocrdma_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ocrdma_del_flush_qp(struct ocrdma_qp *qp)
{
 int found = 0;
 unsigned long flags;
 struct ocrdma_dev *dev = qp->dev;


 spin_lock_irqsave(&dev->flush_q_lock, flags);
 found = ocrdma_is_qp_in_sq_flushlist(qp->sq_cq, qp);
 if (found)
  list_del(&qp->sq_entry);
 if (!qp->srq) {
  found = ocrdma_is_qp_in_rq_flushlist(qp->rq_cq, qp);
  if (found)
   list_del(&qp->rq_entry);
 }
 spin_unlock_irqrestore(&dev->flush_q_lock, flags);
}
