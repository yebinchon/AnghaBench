
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {unsigned int num_sge; int send_flags; size_t opcode; int wr_id; } ;
struct qib_swqe {int length; TYPE_3__ wr; struct qib_sge* sg_list; scalar_t__ lpsn; } ;
struct qib_sge {int mr; } ;
struct TYPE_8__ {int send_cq; } ;
struct qib_qp {size_t state; scalar_t__ s_acked; scalar_t__ s_tail; int s_flags; scalar_t__ s_last; scalar_t__ s_size; scalar_t__ s_psn; scalar_t__ s_sending_hpsn; scalar_t__ s_sending_psn; TYPE_4__ ibqp; int s_rdma_ack_cnt; } ;
struct qib_other_headers {int * bth; } ;
struct TYPE_5__ {struct qib_other_headers oth; } ;
struct TYPE_6__ {TYPE_1__ l; struct qib_other_headers oth; } ;
struct qib_ib_header {TYPE_2__ u; int * lrh; } ;
struct ib_wc {TYPE_4__* qp; int byte_len; int opcode; int status; int wr_id; } ;


 int ATOMIC_ACKNOWLEDGE ;
 int IB_BTH_REQ_ACK ;
 int IB_SEND_SIGNALED ;
 int IB_WC_SUCCESS ;
 int OP (int ) ;
 int QIB_LRH_BTH ;
 int QIB_PROCESS_OR_FLUSH_SEND ;
 int QIB_PROCESS_RECV_OK ;
 int QIB_S_SIGNAL_REQ_WR ;
 int QIB_S_TIMER ;
 int QIB_S_WAIT_PSN ;
 int QIB_S_WAIT_RNR ;
 int RDMA_READ_RESPONSE_FIRST ;
 int WARN_ON (int) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 struct qib_swqe* get_swqe_ptr (struct qib_qp*,scalar_t__) ;
 int* ib_qib_state_ops ;
 int * ib_qib_wc_opcode ;
 int memset (struct ib_wc*,int ,int) ;
 scalar_t__ qib_cmp24 (scalar_t__,scalar_t__) ;
 int qib_cq_enter (int ,struct ib_wc*,int ) ;
 int qib_put_mr (int ) ;
 int qib_schedule_send (struct qib_qp*) ;
 int reset_sending_psn (struct qib_qp*,int) ;
 int start_timer (struct qib_qp*) ;
 int to_icq (int ) ;

void qib_rc_send_complete(struct qib_qp *qp, struct qib_ib_header *hdr)
{
 struct qib_other_headers *ohdr;
 struct qib_swqe *wqe;
 struct ib_wc wc;
 unsigned i;
 u32 opcode;
 u32 psn;

 if (!(ib_qib_state_ops[qp->state] & QIB_PROCESS_OR_FLUSH_SEND))
  return;


 if ((be16_to_cpu(hdr->lrh[0]) & 3) == QIB_LRH_BTH)
  ohdr = &hdr->u.oth;
 else
  ohdr = &hdr->u.l.oth;

 opcode = be32_to_cpu(ohdr->bth[0]) >> 24;
 if (opcode >= OP(RDMA_READ_RESPONSE_FIRST) &&
     opcode <= OP(ATOMIC_ACKNOWLEDGE)) {
  WARN_ON(!qp->s_rdma_ack_cnt);
  qp->s_rdma_ack_cnt--;
  return;
 }

 psn = be32_to_cpu(ohdr->bth[2]);
 reset_sending_psn(qp, psn);





 if ((psn & IB_BTH_REQ_ACK) && qp->s_acked != qp->s_tail &&
     !(qp->s_flags & (QIB_S_TIMER | QIB_S_WAIT_RNR | QIB_S_WAIT_PSN)) &&
     (ib_qib_state_ops[qp->state] & QIB_PROCESS_RECV_OK))
  start_timer(qp);

 while (qp->s_last != qp->s_acked) {
  wqe = get_swqe_ptr(qp, qp->s_last);
  if (qib_cmp24(wqe->lpsn, qp->s_sending_psn) >= 0 &&
      qib_cmp24(qp->s_sending_psn, qp->s_sending_hpsn) <= 0)
   break;
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
 }




 if (qp->s_flags & QIB_S_WAIT_PSN &&
     qib_cmp24(qp->s_sending_psn, qp->s_sending_hpsn) > 0) {
  qp->s_flags &= ~QIB_S_WAIT_PSN;
  qp->s_sending_psn = qp->s_psn;
  qp->s_sending_hpsn = qp->s_psn - 1;
  qib_schedule_send(qp);
 }
}
