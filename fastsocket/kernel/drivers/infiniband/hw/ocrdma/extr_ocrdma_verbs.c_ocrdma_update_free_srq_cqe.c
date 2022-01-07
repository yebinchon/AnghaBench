
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct ocrdma_srq {int rq; int q_lock; int * rqe_wr_id_tbl; } ;
struct TYPE_3__ {int srq; } ;
struct ocrdma_qp {TYPE_1__ ibqp; } ;
struct TYPE_4__ {int buftag_qpn; } ;
struct ocrdma_cqe {TYPE_2__ rq; } ;
struct ib_wc {int wr_id; } ;


 size_t OCRDMA_CQE_BUFTAG_SHIFT ;
 struct ocrdma_srq* get_ocrdma_srq (int ) ;
 size_t le32_to_cpu (int ) ;
 int ocrdma_hwq_inc_tail (int *) ;
 int ocrdma_srq_toggle_bit (struct ocrdma_srq*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ocrdma_update_free_srq_cqe(struct ib_wc *ibwc,
           struct ocrdma_cqe *cqe,
           struct ocrdma_qp *qp)
{
 unsigned long flags;
 struct ocrdma_srq *srq;
 u32 wqe_idx;

 srq = get_ocrdma_srq(qp->ibqp.srq);
 wqe_idx = le32_to_cpu(cqe->rq.buftag_qpn) >> OCRDMA_CQE_BUFTAG_SHIFT;
 ibwc->wr_id = srq->rqe_wr_id_tbl[wqe_idx];
 spin_lock_irqsave(&srq->q_lock, flags);
 ocrdma_srq_toggle_bit(srq, wqe_idx);
 spin_unlock_irqrestore(&srq->q_lock, flags);
 ocrdma_hwq_inc_tail(&srq->rq);
}
