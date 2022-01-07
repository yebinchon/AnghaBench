
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ocrdma_qp {int id; int rq; TYPE_2__* srq; int sq; } ;
struct TYPE_3__ {int qpn; } ;
struct ocrdma_cqe {TYPE_1__ cmn; } ;
struct ocrdma_cq {int getp; int max_hw_cqe; int cq_lock; struct ocrdma_cqe* va; } ;
struct TYPE_4__ {int q_lock; int rq; } ;


 int OCRDMA_CQE_QPN_MASK ;
 scalar_t__ is_cqe_for_sq (struct ocrdma_cqe*) ;
 scalar_t__ is_hw_rq_empty (struct ocrdma_qp*) ;
 scalar_t__ is_hw_sq_empty (struct ocrdma_qp*) ;
 int ocrdma_hwq_inc_tail (int *) ;
 int ocrdma_srq_toggle_bit (TYPE_2__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ocrdma_discard_cqes(struct ocrdma_qp *qp, struct ocrdma_cq *cq)
{
 unsigned long cq_flags;
 unsigned long flags;
 int discard_cnt = 0;
 u32 cur_getp, stop_getp;
 struct ocrdma_cqe *cqe;
 u32 qpn = 0;

 spin_lock_irqsave(&cq->cq_lock, cq_flags);
 cur_getp = cq->getp;

 stop_getp = cur_getp;
 do {
  if (is_hw_sq_empty(qp) && (!qp->srq && is_hw_rq_empty(qp)))
   break;

  cqe = cq->va + cur_getp;




  qpn = cqe->cmn.qpn & OCRDMA_CQE_QPN_MASK;


  if (qpn == 0 || qpn != qp->id)
   goto skip_cqe;




  discard_cnt += 1;
  cqe->cmn.qpn = 0;
  if (is_cqe_for_sq(cqe))
   ocrdma_hwq_inc_tail(&qp->sq);
  else {
   if (qp->srq) {
    spin_lock_irqsave(&qp->srq->q_lock, flags);
    ocrdma_hwq_inc_tail(&qp->srq->rq);
    ocrdma_srq_toggle_bit(qp->srq, cur_getp);
    spin_unlock_irqrestore(&qp->srq->q_lock, flags);

   } else
    ocrdma_hwq_inc_tail(&qp->rq);
  }
skip_cqe:
  cur_getp = (cur_getp + 1) % cq->max_hw_cqe;
 } while (cur_getp != stop_getp);
 spin_unlock_irqrestore(&cq->cq_lock, cq_flags);
}
