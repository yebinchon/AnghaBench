
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int tail; } ;
struct ocrdma_qp {TYPE_3__ sq; int ibqp; TYPE_1__* wqe_wr_id_tbl; } ;
struct TYPE_5__ {int wqeidx; } ;
struct ocrdma_cqe {TYPE_2__ wq; } ;
struct ib_wc {int * qp; scalar_t__ wc_flags; int status; } ;
struct TYPE_4__ {int signaled; } ;


 int IB_WC_SUCCESS ;
 int OCRDMA_CQE_WQEIDX_MASK ;
 int le32_to_cpu (int ) ;
 int ocrdma_hwq_inc_tail (TYPE_3__*) ;
 int ocrdma_update_wc (struct ocrdma_qp*,struct ib_wc*,int) ;

__attribute__((used)) static bool ocrdma_poll_success_scqe(struct ocrdma_qp *qp,
         struct ocrdma_cqe *cqe,
         struct ib_wc *ibwc, bool *polled)
{
 bool expand = 0;
 int tail = qp->sq.tail;
 u32 wqe_idx;

 if (!qp->wqe_wr_id_tbl[tail].signaled) {
  *polled = 0;
 } else {
  ibwc->status = IB_WC_SUCCESS;
  ibwc->wc_flags = 0;
  ibwc->qp = &qp->ibqp;
  ocrdma_update_wc(qp, ibwc, tail);
  *polled = 1;
 }
 wqe_idx = le32_to_cpu(cqe->wq.wqeidx) & OCRDMA_CQE_WQEIDX_MASK;
 if (tail != wqe_idx)
  expand = 1;

 ocrdma_hwq_inc_tail(&qp->sq);
 return expand;
}
