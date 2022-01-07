
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int ah; } ;
struct TYPE_7__ {TYPE_1__ ud; } ;
struct TYPE_8__ {unsigned int num_sge; int send_flags; size_t opcode; int wr_id; TYPE_2__ wr; } ;
struct qib_swqe {int length; TYPE_3__ wr; struct qib_sge* sg_list; } ;
struct qib_sge {int mr; } ;
struct TYPE_9__ {scalar_t__ qp_type; int send_cq; } ;
struct qib_qp {size_t state; int s_flags; scalar_t__ s_last; scalar_t__ s_size; scalar_t__ s_acked; scalar_t__ s_cur; scalar_t__ s_tail; scalar_t__ s_draining; TYPE_4__ ibqp; } ;
struct ib_wc {int status; int byte_len; TYPE_4__* qp; int opcode; int wr_id; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
struct TYPE_10__ {int refcount; } ;


 size_t IB_QPS_SQD ;
 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_SMI ;
 scalar_t__ IB_QPT_UD ;
 int IB_SEND_SIGNALED ;
 int IB_WC_SUCCESS ;
 int QIB_PROCESS_OR_FLUSH_SEND ;
 int QIB_S_SIGNAL_REQ_WR ;
 int atomic_dec (int *) ;
 int* ib_qib_state_ops ;
 int * ib_qib_wc_opcode ;
 int memset (struct ib_wc*,int ,int) ;
 int qib_cq_enter (int ,struct ib_wc*,int) ;
 int qib_put_mr (int ) ;
 TYPE_5__* to_iah (int ) ;
 int to_icq (int ) ;

void qib_send_complete(struct qib_qp *qp, struct qib_swqe *wqe,
         enum ib_wc_status status)
{
 u32 old_last, last;
 unsigned i;

 if (!(ib_qib_state_ops[qp->state] & QIB_PROCESS_OR_FLUSH_SEND))
  return;

 for (i = 0; i < wqe->wr.num_sge; i++) {
  struct qib_sge *sge = &wqe->sg_list[i];

  qib_put_mr(sge->mr);
 }
 if (qp->ibqp.qp_type == IB_QPT_UD ||
     qp->ibqp.qp_type == IB_QPT_SMI ||
     qp->ibqp.qp_type == IB_QPT_GSI)
  atomic_dec(&to_iah(wqe->wr.wr.ud.ah)->refcount);


 if (!(qp->s_flags & QIB_S_SIGNAL_REQ_WR) ||
     (wqe->wr.send_flags & IB_SEND_SIGNALED) ||
     status != IB_WC_SUCCESS) {
  struct ib_wc wc;

  memset(&wc, 0, sizeof wc);
  wc.wr_id = wqe->wr.wr_id;
  wc.status = status;
  wc.opcode = ib_qib_wc_opcode[wqe->wr.opcode];
  wc.qp = &qp->ibqp;
  if (status == IB_WC_SUCCESS)
   wc.byte_len = wqe->length;
  qib_cq_enter(to_icq(qp->ibqp.send_cq), &wc,
        status != IB_WC_SUCCESS);
 }

 last = qp->s_last;
 old_last = last;
 if (++last >= qp->s_size)
  last = 0;
 qp->s_last = last;
 if (qp->s_acked == old_last)
  qp->s_acked = last;
 if (qp->s_cur == old_last)
  qp->s_cur = last;
 if (qp->s_tail == old_last)
  qp->s_tail = last;
 if (qp->state == IB_QPS_SQD && last == qp->s_cur)
  qp->s_draining = 0;
}
