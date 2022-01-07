
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ opcode; } ;
struct qib_swqe {TYPE_2__ wr; } ;
struct TYPE_3__ {int device; } ;
struct qib_qp {scalar_t__ s_acked; scalar_t__ s_retry; scalar_t__ s_mig_state; scalar_t__ s_retry_cnt; scalar_t__ s_last; int s_psn; int s_flags; int port_num; TYPE_1__ ibqp; } ;
struct qib_ibport {scalar_t__ n_rc_resends; } ;


 scalar_t__ IB_MIG_ARMED ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_WR_FLUSH_ERR ;
 scalar_t__ IB_WR_RDMA_READ ;
 int QIB_PSN_MASK ;
 int QIB_S_SEND_ONE ;
 int QIB_S_WAIT_ACK ;
 int QIB_S_WAIT_FENCE ;
 int QIB_S_WAIT_PSN ;
 int QIB_S_WAIT_RDMAR ;
 int QIB_S_WAIT_SSN_CREDIT ;
 struct qib_swqe* get_swqe_ptr (struct qib_qp*,scalar_t__) ;
 int qib_error_qp (struct qib_qp*,int ) ;
 int qib_migrate_qp (struct qib_qp*) ;
 int qib_send_complete (struct qib_qp*,struct qib_swqe*,int ) ;
 int reset_psn (struct qib_qp*,int) ;
 struct qib_ibport* to_iport (int ,int ) ;

__attribute__((used)) static void qib_restart_rc(struct qib_qp *qp, u32 psn, int wait)
{
 struct qib_swqe *wqe = get_swqe_ptr(qp, qp->s_acked);
 struct qib_ibport *ibp;

 if (qp->s_retry == 0) {
  if (qp->s_mig_state == IB_MIG_ARMED) {
   qib_migrate_qp(qp);
   qp->s_retry = qp->s_retry_cnt;
  } else if (qp->s_last == qp->s_acked) {
   qib_send_complete(qp, wqe, IB_WC_RETRY_EXC_ERR);
   qib_error_qp(qp, IB_WC_WR_FLUSH_ERR);
   return;
  } else
   return;
 } else
  qp->s_retry--;

 ibp = to_iport(qp->ibqp.device, qp->port_num);
 if (wqe->wr.opcode == IB_WR_RDMA_READ)
  ibp->n_rc_resends++;
 else
  ibp->n_rc_resends += (qp->s_psn - psn) & QIB_PSN_MASK;

 qp->s_flags &= ~(QIB_S_WAIT_FENCE | QIB_S_WAIT_RDMAR |
    QIB_S_WAIT_SSN_CREDIT | QIB_S_WAIT_PSN |
    QIB_S_WAIT_ACK);
 if (wait)
  qp->s_flags |= QIB_S_SEND_ONE;
 reset_psn(qp, psn);
}
