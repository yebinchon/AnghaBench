
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct nes_vnic {int nesdev; } ;
struct TYPE_6__ {int qp_id; int sq_tail; int sq_head; } ;
struct TYPE_5__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct nes_qp {scalar_t__ hw_tcp_state; scalar_t__ ibqp_state; scalar_t__ last_aeq; int flush_issued; scalar_t__ destroyed; scalar_t__ hw_iwarp_state; int refcount; TYPE_3__ hwqp; TYPE_2__ ibqp; int terminate_eventtype; scalar_t__ term_flags; int lock; struct iw_cm_id* cm_id; int terminate_timer; } ;
struct iw_cm_id {int (* event_handler ) (struct iw_cm_id*,struct iw_cm_event*) ;int (* rem_ref ) (struct iw_cm_id*) ;int remote_addr; int local_addr; struct nes_qp* provider_data; } ;
struct iw_cm_event {int status; scalar_t__ private_data_len; int * private_data; int remote_addr; int local_addr; struct nes_qp* provider_data; int event; } ;
struct TYPE_4__ {TYPE_2__* qp; } ;
struct ib_event {TYPE_1__ element; int event; int device; } ;


 int ECONNRESET ;
 scalar_t__ IB_QPS_RTS ;
 int IW_CM_EVENT_CLOSE ;
 int IW_CM_EVENT_DISCONNECT ;
 scalar_t__ NES_AEQE_AEID_LLP_CONNECTION_RESET ;
 scalar_t__ NES_AEQE_AEID_RDMAP_ROE_BAD_LLP_CLOSE ;
 scalar_t__ NES_AEQE_IWARP_STATE_TERMINATE ;
 scalar_t__ NES_AEQE_TCP_STATE_CLOSED ;
 scalar_t__ NES_AEQE_TCP_STATE_CLOSE_WAIT ;
 scalar_t__ NES_AEQE_TCP_STATE_TIME_WAIT ;
 int NES_CQP_FLUSH_RQ ;
 int NES_CQP_FLUSH_SQ ;
 int NES_DBG_CM ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int cm_closes ;
 int cm_disconnects ;
 int del_timer (int *) ;
 int flush_wqes (int ,struct nes_qp*,int ,int) ;
 int nes_debug (int ,char*,...) ;
 int nes_disconnect (struct nes_qp*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ib_event*,int ) ;
 int stub2 (struct iw_cm_id*,struct iw_cm_event*) ;
 int stub3 (struct iw_cm_id*,struct iw_cm_event*) ;
 int stub4 (struct iw_cm_id*) ;
 struct nes_vnic* to_nesvnic (int ) ;

__attribute__((used)) static int nes_cm_disconn_true(struct nes_qp *nesqp)
{
 unsigned long flags;
 int ret = 0;
 struct iw_cm_id *cm_id;
 struct iw_cm_event cm_event;
 struct nes_vnic *nesvnic;
 u16 last_ae;
 u8 original_hw_tcp_state;
 u8 original_ibqp_state;
 int disconn_status = 0;
 int issue_disconn = 0;
 int issue_close = 0;
 int issue_flush = 0;
 u32 flush_q = NES_CQP_FLUSH_RQ;
 struct ib_event ibevent;

 if (!nesqp) {
  nes_debug(NES_DBG_CM, "disconnect_worker nesqp is NULL\n");
  return -1;
 }

 spin_lock_irqsave(&nesqp->lock, flags);
 cm_id = nesqp->cm_id;

 if (!cm_id) {
  nes_debug(NES_DBG_CM, "QP%u disconnect_worker cmid is NULL\n",
     nesqp->hwqp.qp_id);
  spin_unlock_irqrestore(&nesqp->lock, flags);
  return -1;
 }

 nesvnic = to_nesvnic(nesqp->ibqp.device);
 nes_debug(NES_DBG_CM, "Disconnecting QP%u\n", nesqp->hwqp.qp_id);

 original_hw_tcp_state = nesqp->hw_tcp_state;
 original_ibqp_state = nesqp->ibqp_state;
 last_ae = nesqp->last_aeq;

 if (nesqp->term_flags) {
  issue_disconn = 1;
  issue_close = 1;
  nesqp->cm_id = ((void*)0);
  del_timer(&nesqp->terminate_timer);
  if (nesqp->flush_issued == 0) {
   nesqp->flush_issued = 1;
   issue_flush = 1;
  }
 } else if ((original_hw_tcp_state == NES_AEQE_TCP_STATE_CLOSE_WAIT) ||
   ((original_ibqp_state == IB_QPS_RTS) &&
   (last_ae == NES_AEQE_AEID_LLP_CONNECTION_RESET))) {
  issue_disconn = 1;
  if (last_ae == NES_AEQE_AEID_LLP_CONNECTION_RESET)
   disconn_status = -ECONNRESET;
 }

 if (((original_hw_tcp_state == NES_AEQE_TCP_STATE_CLOSED) ||
   (original_hw_tcp_state == NES_AEQE_TCP_STATE_TIME_WAIT) ||
   (last_ae == NES_AEQE_AEID_RDMAP_ROE_BAD_LLP_CLOSE) ||
   (last_ae == NES_AEQE_AEID_LLP_CONNECTION_RESET))) {
  issue_close = 1;
  nesqp->cm_id = ((void*)0);
  if (nesqp->flush_issued == 0) {
   nesqp->flush_issued = 1;
   issue_flush = 1;
  }
 }

 spin_unlock_irqrestore(&nesqp->lock, flags);

 if ((issue_flush) && (nesqp->destroyed == 0)) {

  if (nesqp->hw_iwarp_state >= NES_AEQE_IWARP_STATE_TERMINATE)
   flush_q |= NES_CQP_FLUSH_SQ;
  flush_wqes(nesvnic->nesdev, nesqp, flush_q, 1);

  if (nesqp->term_flags) {
   ibevent.device = nesqp->ibqp.device;
   ibevent.event = nesqp->terminate_eventtype;
   ibevent.element.qp = &nesqp->ibqp;
   if (nesqp->ibqp.event_handler)
    nesqp->ibqp.event_handler(&ibevent, nesqp->ibqp.qp_context);
  }
 }

 if ((cm_id) && (cm_id->event_handler)) {
  if (issue_disconn) {
   atomic_inc(&cm_disconnects);
   cm_event.event = IW_CM_EVENT_DISCONNECT;
   cm_event.status = disconn_status;
   cm_event.local_addr = cm_id->local_addr;
   cm_event.remote_addr = cm_id->remote_addr;
   cm_event.private_data = ((void*)0);
   cm_event.private_data_len = 0;

   nes_debug(NES_DBG_CM, "Generating a CM Disconnect Event"
      " for  QP%u, SQ Head = %u, SQ Tail = %u. "
      "cm_id = %p, refcount = %u.\n",
      nesqp->hwqp.qp_id, nesqp->hwqp.sq_head,
      nesqp->hwqp.sq_tail, cm_id,
      atomic_read(&nesqp->refcount));

   ret = cm_id->event_handler(cm_id, &cm_event);
   if (ret)
    nes_debug(NES_DBG_CM, "OFA CM event_handler "
       "returned, ret=%d\n", ret);
  }

  if (issue_close) {
   atomic_inc(&cm_closes);
   nes_disconnect(nesqp, 1);

   cm_id->provider_data = nesqp;

   cm_event.event = IW_CM_EVENT_CLOSE;
   cm_event.status = 0;
   cm_event.provider_data = cm_id->provider_data;
   cm_event.local_addr = cm_id->local_addr;
   cm_event.remote_addr = cm_id->remote_addr;
   cm_event.private_data = ((void*)0);
   cm_event.private_data_len = 0;

   ret = cm_id->event_handler(cm_id, &cm_event);
   if (ret)
    nes_debug(NES_DBG_CM, "OFA CM event_handler returned, ret=%d\n", ret);

   cm_id->rem_ref(cm_id);
  }
 }

 return 0;
}
