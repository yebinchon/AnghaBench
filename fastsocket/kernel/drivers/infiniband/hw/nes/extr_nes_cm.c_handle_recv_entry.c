
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nes_timer_entry {scalar_t__ skb; } ;
struct TYPE_2__ {int qp_id; } ;
struct nes_qp {int refcount; TYPE_1__ hwqp; int lock; int ibqp_state; int last_aeq; int hw_tcp_state; scalar_t__ cm_id; } ;
struct nes_cm_node {struct nes_timer_entry* recv_entry; struct iw_cm_id* cm_id; int cm_core; } ;
struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;} ;


 int IB_QPS_ERR ;
 int NES_AEQE_AEID_RESET_SENT ;
 int NES_AEQE_TCP_STATE_CLOSED ;
 int NES_DBG_CM ;
 int atomic_read (int *) ;
 int kfree (struct nes_timer_entry*) ;
 int nes_cm_disconn (struct nes_qp*) ;
 int nes_debug (int ,char*,int ,struct iw_cm_id*,int ) ;
 int rem_ref_cm_node (int ,struct nes_cm_node*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct iw_cm_id*) ;

__attribute__((used)) static void handle_recv_entry(struct nes_cm_node *cm_node, u32 rem_node)
{
 struct nes_timer_entry *recv_entry = cm_node->recv_entry;
 struct iw_cm_id *cm_id = cm_node->cm_id;
 struct nes_qp *nesqp;
 unsigned long qplockflags;

 if (!recv_entry)
  return;
 nesqp = (struct nes_qp *)recv_entry->skb;
 if (nesqp) {
  spin_lock_irqsave(&nesqp->lock, qplockflags);
  if (nesqp->cm_id) {
   nes_debug(NES_DBG_CM, "QP%u: cm_id = %p, "
      "refcount = %d: HIT A "
      "NES_TIMER_TYPE_CLOSE with something "
      "to do!!!\n", nesqp->hwqp.qp_id, cm_id,
      atomic_read(&nesqp->refcount));
   nesqp->hw_tcp_state = NES_AEQE_TCP_STATE_CLOSED;
   nesqp->last_aeq = NES_AEQE_AEID_RESET_SENT;
   nesqp->ibqp_state = IB_QPS_ERR;
   spin_unlock_irqrestore(&nesqp->lock, qplockflags);
   nes_cm_disconn(nesqp);
  } else {
   spin_unlock_irqrestore(&nesqp->lock, qplockflags);
   nes_debug(NES_DBG_CM, "QP%u: cm_id = %p, "
      "refcount = %d: HIT A "
      "NES_TIMER_TYPE_CLOSE with nothing "
      "to do!!!\n", nesqp->hwqp.qp_id, cm_id,
      atomic_read(&nesqp->refcount));
  }
 } else if (rem_node) {

  rem_ref_cm_node(cm_node->cm_core, cm_node);
 }
 if (cm_node->cm_id)
  cm_id->rem_ref(cm_id);
 kfree(recv_entry);
 cm_node->recv_entry = ((void*)0);
}
