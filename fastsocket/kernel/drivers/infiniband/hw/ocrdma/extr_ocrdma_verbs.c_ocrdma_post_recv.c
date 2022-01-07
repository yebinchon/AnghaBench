
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ max_sges; size_t head; } ;
struct ocrdma_qp {scalar_t__ state; int q_lock; TYPE_1__ rq; int * rqe_wr_id_tbl; } ;
struct ocrdma_hdr_wqe {int dummy; } ;
struct ib_recv_wr {scalar_t__ num_sge; struct ib_recv_wr* next; int wr_id; } ;
struct ib_qp {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ OCRDMA_QPS_ERR ;
 scalar_t__ OCRDMA_QPS_RST ;
 struct ocrdma_qp* get_ocrdma_qp (struct ib_qp*) ;
 int ocrdma_build_rqe (struct ocrdma_hdr_wqe*,struct ib_recv_wr*,int ) ;
 scalar_t__ ocrdma_hwq_free_cnt (TYPE_1__*) ;
 struct ocrdma_hdr_wqe* ocrdma_hwq_head (TYPE_1__*) ;
 int ocrdma_hwq_inc_head (TYPE_1__*) ;
 int ocrdma_ring_rq_db (struct ocrdma_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

int ocrdma_post_recv(struct ib_qp *ibqp, struct ib_recv_wr *wr,
       struct ib_recv_wr **bad_wr)
{
 int status = 0;
 unsigned long flags;
 struct ocrdma_qp *qp = get_ocrdma_qp(ibqp);
 struct ocrdma_hdr_wqe *rqe;

 spin_lock_irqsave(&qp->q_lock, flags);
 if (qp->state == OCRDMA_QPS_RST || qp->state == OCRDMA_QPS_ERR) {
  spin_unlock_irqrestore(&qp->q_lock, flags);
  *bad_wr = wr;
  return -EINVAL;
 }
 while (wr) {
  if (ocrdma_hwq_free_cnt(&qp->rq) == 0 ||
      wr->num_sge > qp->rq.max_sges) {
   *bad_wr = wr;
   status = -ENOMEM;
   break;
  }
  rqe = ocrdma_hwq_head(&qp->rq);
  ocrdma_build_rqe(rqe, wr, 0);

  qp->rqe_wr_id_tbl[qp->rq.head] = wr->wr_id;

  wmb();


  ocrdma_ring_rq_db(qp);


  ocrdma_hwq_inc_head(&qp->rq);
  wr = wr->next;
 }
 spin_unlock_irqrestore(&qp->q_lock, flags);
 return status;
}
