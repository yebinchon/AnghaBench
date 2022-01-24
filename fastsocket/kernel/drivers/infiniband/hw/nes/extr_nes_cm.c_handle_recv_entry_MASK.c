#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nes_timer_entry {scalar_t__ skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp_id; } ;
struct nes_qp {int /*<<< orphan*/  refcount; TYPE_1__ hwqp; int /*<<< orphan*/  lock; int /*<<< orphan*/  ibqp_state; int /*<<< orphan*/  last_aeq; int /*<<< orphan*/  hw_tcp_state; scalar_t__ cm_id; } ;
struct nes_cm_node {struct nes_timer_entry* recv_entry; struct iw_cm_id* cm_id; int /*<<< orphan*/  cm_core; } ;
struct iw_cm_id {int /*<<< orphan*/  (* rem_ref ) (struct iw_cm_id*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  NES_AEQE_AEID_RESET_SENT ; 
 int /*<<< orphan*/  NES_AEQE_TCP_STATE_CLOSED ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_timer_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct iw_cm_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct iw_cm_id*) ; 

__attribute__((used)) static void FUNC8(struct nes_cm_node *cm_node, u32 rem_node)
{
	struct nes_timer_entry *recv_entry = cm_node->recv_entry;
	struct iw_cm_id *cm_id = cm_node->cm_id;
	struct nes_qp *nesqp;
	unsigned long qplockflags;

	if (!recv_entry)
		return;
	nesqp = (struct nes_qp *)recv_entry->skb;
	if (nesqp) {
		FUNC5(&nesqp->lock, qplockflags);
		if (nesqp->cm_id) {
			FUNC3(NES_DBG_CM, "QP%u: cm_id = %p, "
				  "refcount = %d: HIT A "
				  "NES_TIMER_TYPE_CLOSE with something "
				  "to do!!!\n", nesqp->hwqp.qp_id, cm_id,
				  FUNC0(&nesqp->refcount));
			nesqp->hw_tcp_state = NES_AEQE_TCP_STATE_CLOSED;
			nesqp->last_aeq = NES_AEQE_AEID_RESET_SENT;
			nesqp->ibqp_state = IB_QPS_ERR;
			FUNC6(&nesqp->lock, qplockflags);
			FUNC2(nesqp);
		} else {
			FUNC6(&nesqp->lock, qplockflags);
			FUNC3(NES_DBG_CM, "QP%u: cm_id = %p, "
				  "refcount = %d: HIT A "
				  "NES_TIMER_TYPE_CLOSE with nothing "
				  "to do!!!\n", nesqp->hwqp.qp_id, cm_id,
				  FUNC0(&nesqp->refcount));
		}
	} else if (rem_node) {
		/* TIME_WAIT state */
		FUNC4(cm_node->cm_core, cm_node);
	}
	if (cm_node->cm_id)
		cm_id->rem_ref(cm_id);
	FUNC1(recv_entry);
	cm_node->recv_entry = NULL;
}