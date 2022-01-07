
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* wq; } ;
struct ipath_qp {int s_ssn; TYPE_2__ r_rq; scalar_t__ s_num_rd_atomic; scalar_t__ s_tail_ack_queue; scalar_t__ r_head_ack_queue; int s_ack_queue; scalar_t__ s_lsn; scalar_t__ s_last; scalar_t__ s_cur; scalar_t__ s_tail; scalar_t__ s_head; scalar_t__ s_rnr_timeout; scalar_t__ r_flags; scalar_t__ r_aflags; scalar_t__ r_nak_state; int s_ack_state; void* r_state; void* s_state; scalar_t__ r_msn; scalar_t__ r_psn; scalar_t__ s_psn; scalar_t__ s_draining; scalar_t__ s_pkt_delay; int * s_wqe; scalar_t__ s_hdrwords; int s_flags; int s_dma_busy; scalar_t__ qp_access_flags; scalar_t__ qkey; scalar_t__ remote_qpn; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_3__ {scalar_t__ tail; scalar_t__ head; } ;


 int IB_OPCODE_RC_ACKNOWLEDGE ;
 void* IB_OPCODE_RC_SEND_LAST ;
 void* IB_OPCODE_UC_SEND_LAST ;
 int IB_QPT_RC ;
 int IPATH_S_SIGNAL_REQ_WR ;
 int atomic_set (int *,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void ipath_reset_qp(struct ipath_qp *qp, enum ib_qp_type type)
{
 qp->remote_qpn = 0;
 qp->qkey = 0;
 qp->qp_access_flags = 0;
 atomic_set(&qp->s_dma_busy, 0);
 qp->s_flags &= IPATH_S_SIGNAL_REQ_WR;
 qp->s_hdrwords = 0;
 qp->s_wqe = ((void*)0);
 qp->s_pkt_delay = 0;
 qp->s_draining = 0;
 qp->s_psn = 0;
 qp->r_psn = 0;
 qp->r_msn = 0;
 if (type == IB_QPT_RC) {
  qp->s_state = IB_OPCODE_RC_SEND_LAST;
  qp->r_state = IB_OPCODE_RC_SEND_LAST;
 } else {
  qp->s_state = IB_OPCODE_UC_SEND_LAST;
  qp->r_state = IB_OPCODE_UC_SEND_LAST;
 }
 qp->s_ack_state = IB_OPCODE_RC_ACKNOWLEDGE;
 qp->r_nak_state = 0;
 qp->r_aflags = 0;
 qp->r_flags = 0;
 qp->s_rnr_timeout = 0;
 qp->s_head = 0;
 qp->s_tail = 0;
 qp->s_cur = 0;
 qp->s_last = 0;
 qp->s_ssn = 1;
 qp->s_lsn = 0;
 memset(qp->s_ack_queue, 0, sizeof(qp->s_ack_queue));
 qp->r_head_ack_queue = 0;
 qp->s_tail_ack_queue = 0;
 qp->s_num_rd_atomic = 0;
 if (qp->r_rq.wq) {
  qp->r_rq.wq->head = 0;
  qp->r_rq.wq->tail = 0;
 }
}
