
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp {int ibqp; } ;
struct ocrdma_cqe {int dummy; } ;
struct ib_wc {int status; int * qp; scalar_t__ byte_len; } ;


 int IB_QPS_ERR ;
 int is_hw_rq_empty (struct ocrdma_qp*) ;
 int is_hw_sq_empty (struct ocrdma_qp*) ;
 int ocrdma_flush_qp (struct ocrdma_qp*) ;
 int ocrdma_qp_state_machine (struct ocrdma_qp*,int ,int *) ;
 int ocrdma_set_cqe_status_flushed (struct ocrdma_qp*,struct ocrdma_cqe*) ;
 int ocrdma_to_ibwc_err (int) ;

__attribute__((used)) static bool ocrdma_update_err_cqe(struct ib_wc *ibwc, struct ocrdma_cqe *cqe,
      struct ocrdma_qp *qp, int status)
{
 bool expand = 0;

 ibwc->byte_len = 0;
 ibwc->qp = &qp->ibqp;
 ibwc->status = ocrdma_to_ibwc_err(status);

 ocrdma_flush_qp(qp);
 ocrdma_qp_state_machine(qp, IB_QPS_ERR, ((void*)0));




 if (!is_hw_rq_empty(qp) || !is_hw_sq_empty(qp)) {
  expand = 1;
  ocrdma_set_cqe_status_flushed(qp, cqe);
 }
 return expand;
}
