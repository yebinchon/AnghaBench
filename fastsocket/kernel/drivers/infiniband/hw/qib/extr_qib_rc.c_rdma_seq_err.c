
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ opcode; } ;
struct qib_swqe {TYPE_1__ wr; int lpsn; } ;
struct qib_qp {int s_flags; int rspwait; int refcount; int r_flags; scalar_t__ s_last_psn; int s_acked; int s_timer; } ;
struct qib_ibport {int n_rdma_seq; } ;
struct qib_ctxtdata {int qp_wait_list; } ;


 scalar_t__ IB_WR_ATOMIC_CMP_AND_SWP ;
 scalar_t__ IB_WR_ATOMIC_FETCH_AND_ADD ;
 scalar_t__ IB_WR_RDMA_READ ;
 int QIB_R_RDMAR_SEQ ;
 int QIB_R_RSP_SEND ;
 int QIB_S_TIMER ;
 int QIB_S_WAIT_RNR ;
 int atomic_inc (int *) ;
 int del_timer (int *) ;
 struct qib_swqe* do_rc_completion (struct qib_qp*,struct qib_swqe*,struct qib_ibport*) ;
 struct qib_swqe* get_swqe_ptr (struct qib_qp*,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ qib_cmp24 (int ,int ) ;
 int qib_restart_rc (struct qib_qp*,scalar_t__,int ) ;

__attribute__((used)) static void rdma_seq_err(struct qib_qp *qp, struct qib_ibport *ibp, u32 psn,
    struct qib_ctxtdata *rcd)
{
 struct qib_swqe *wqe;


 if (qp->s_flags & (QIB_S_TIMER | QIB_S_WAIT_RNR)) {
  qp->s_flags &= ~(QIB_S_TIMER | QIB_S_WAIT_RNR);
  del_timer(&qp->s_timer);
 }

 wqe = get_swqe_ptr(qp, qp->s_acked);

 while (qib_cmp24(psn, wqe->lpsn) > 0) {
  if (wqe->wr.opcode == IB_WR_RDMA_READ ||
      wqe->wr.opcode == IB_WR_ATOMIC_CMP_AND_SWP ||
      wqe->wr.opcode == IB_WR_ATOMIC_FETCH_AND_ADD)
   break;
  wqe = do_rc_completion(qp, wqe, ibp);
 }

 ibp->n_rdma_seq++;
 qp->r_flags |= QIB_R_RDMAR_SEQ;
 qib_restart_rc(qp, qp->s_last_psn + 1, 0);
 if (list_empty(&qp->rspwait)) {
  qp->r_flags |= QIB_R_RSP_SEND;
  atomic_inc(&qp->refcount);
  list_add_tail(&qp->rspwait, &rcd->qp_wait_list);
 }
}
