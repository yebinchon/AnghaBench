
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int num_sge; int send_flags; size_t opcode; int wr_id; } ;
struct qib_swqe {int psn; int lpsn; int length; TYPE_1__ wr; struct qib_sge* sg_list; } ;
struct qib_sge {int mr; } ;
struct TYPE_4__ {int send_cq; } ;
struct qib_qp {int s_flags; scalar_t__ s_last; scalar_t__ s_size; scalar_t__ s_acked; scalar_t__ s_cur; scalar_t__ s_tail; scalar_t__ state; scalar_t__ s_draining; int s_psn; int s_state; int s_retry_cnt; int s_retry; TYPE_2__ ibqp; int s_sending_hpsn; int s_sending_psn; } ;
struct qib_ibport {int n_rc_delayed_comp; } ;
struct ib_wc {TYPE_2__* qp; int byte_len; int opcode; int status; int wr_id; } ;


 scalar_t__ IB_QPS_SQD ;
 int IB_SEND_SIGNALED ;
 int IB_WC_SUCCESS ;
 int OP (int ) ;
 int QIB_S_SIGNAL_REQ_WR ;
 int SEND_LAST ;
 struct qib_swqe* get_swqe_ptr (struct qib_qp*,scalar_t__) ;
 int * ib_qib_wc_opcode ;
 int memset (struct ib_wc*,int ,int) ;
 scalar_t__ qib_cmp24 (int ,int ) ;
 int qib_cq_enter (int ,struct ib_wc*,int ) ;
 int qib_put_mr (int ) ;
 int to_icq (int ) ;
 int update_last_psn (struct qib_qp*,int ) ;

__attribute__((used)) static struct qib_swqe *do_rc_completion(struct qib_qp *qp,
      struct qib_swqe *wqe,
      struct qib_ibport *ibp)
{
 struct ib_wc wc;
 unsigned i;






 if (qib_cmp24(wqe->lpsn, qp->s_sending_psn) < 0 ||
     qib_cmp24(qp->s_sending_psn, qp->s_sending_hpsn) > 0) {
  for (i = 0; i < wqe->wr.num_sge; i++) {
   struct qib_sge *sge = &wqe->sg_list[i];

   qib_put_mr(sge->mr);
  }

  if (!(qp->s_flags & QIB_S_SIGNAL_REQ_WR) ||
      (wqe->wr.send_flags & IB_SEND_SIGNALED)) {
   memset(&wc, 0, sizeof wc);
   wc.wr_id = wqe->wr.wr_id;
   wc.status = IB_WC_SUCCESS;
   wc.opcode = ib_qib_wc_opcode[wqe->wr.opcode];
   wc.byte_len = wqe->length;
   wc.qp = &qp->ibqp;
   qib_cq_enter(to_icq(qp->ibqp.send_cq), &wc, 0);
  }
  if (++qp->s_last >= qp->s_size)
   qp->s_last = 0;
 } else
  ibp->n_rc_delayed_comp++;

 qp->s_retry = qp->s_retry_cnt;
 update_last_psn(qp, wqe->lpsn);






 if (qp->s_acked == qp->s_cur) {
  if (++qp->s_cur >= qp->s_size)
   qp->s_cur = 0;
  qp->s_acked = qp->s_cur;
  wqe = get_swqe_ptr(qp, qp->s_cur);
  if (qp->s_acked != qp->s_tail) {
   qp->s_state = OP(SEND_LAST);
   qp->s_psn = wqe->psn;
  }
 } else {
  if (++qp->s_acked >= qp->s_size)
   qp->s_acked = 0;
  if (qp->state == IB_QPS_SQD && qp->s_acked == qp->s_cur)
   qp->s_draining = 0;
  wqe = get_swqe_ptr(qp, qp->s_acked);
 }
 return wqe;
}
