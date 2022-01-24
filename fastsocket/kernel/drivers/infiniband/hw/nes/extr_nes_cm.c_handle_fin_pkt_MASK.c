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
struct TYPE_2__ {int /*<<< orphan*/  rcv_nxt; } ;
struct nes_cm_node {int state; int /*<<< orphan*/  cm_core; TYPE_1__ tcp_cntxt; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_CM_EVENT_ABORTED ; 
 void* NES_CM_STATE_CLOSED ; 
 int NES_CM_STATE_CLOSING ; 
#define  NES_CM_STATE_ESTABLISHED 136 
#define  NES_CM_STATE_FIN_WAIT1 135 
#define  NES_CM_STATE_FIN_WAIT2 134 
 int NES_CM_STATE_LAST_ACK ; 
#define  NES_CM_STATE_MPAREJ_RCVD 133 
#define  NES_CM_STATE_MPAREQ_SENT 132 
#define  NES_CM_STATE_SYN_RCVD 131 
#define  NES_CM_STATE_SYN_SENT 130 
#define  NES_CM_STATE_TIME_WAIT 129 
#define  NES_CM_STATE_TSA 128 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  NES_TIMER_TYPE_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct nes_cm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct nes_cm_node*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct nes_cm_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nes_cm_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nes_cm_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct nes_cm_node*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct nes_cm_node *cm_node)
{
	FUNC4(NES_DBG_CM, "Received FIN, cm_node = %p, state = %u. "
		  "refcnt=%d\n", cm_node, cm_node->state,
		  FUNC1(&cm_node->ref_count));
	switch (cm_node->state) {
	case NES_CM_STATE_SYN_RCVD:
	case NES_CM_STATE_SYN_SENT:
	case NES_CM_STATE_ESTABLISHED:
	case NES_CM_STATE_MPAREJ_RCVD:
		cm_node->tcp_cntxt.rcv_nxt++;
		FUNC2(cm_node);
		cm_node->state = NES_CM_STATE_LAST_ACK;
		FUNC8(cm_node, NULL);
		break;
	case NES_CM_STATE_MPAREQ_SENT:
		FUNC3(cm_node, NES_CM_EVENT_ABORTED);
		cm_node->tcp_cntxt.rcv_nxt++;
		FUNC2(cm_node);
		cm_node->state = NES_CM_STATE_CLOSED;
		FUNC0(cm_node);
		FUNC9(cm_node, NULL);
		break;
	case NES_CM_STATE_FIN_WAIT1:
		cm_node->tcp_cntxt.rcv_nxt++;
		FUNC2(cm_node);
		cm_node->state = NES_CM_STATE_CLOSING;
		FUNC7(cm_node, NULL);
		/* Wait for ACK as this is simultaneous close..
		* After we receive ACK, do not send anything..
		* Just rm the node.. Done.. */
		break;
	case NES_CM_STATE_FIN_WAIT2:
		cm_node->tcp_cntxt.rcv_nxt++;
		FUNC2(cm_node);
		cm_node->state = NES_CM_STATE_TIME_WAIT;
		FUNC7(cm_node, NULL);
		FUNC6(cm_node, NULL,  NES_TIMER_TYPE_CLOSE, 1, 0);
		break;
	case NES_CM_STATE_TIME_WAIT:
		cm_node->tcp_cntxt.rcv_nxt++;
		FUNC2(cm_node);
		cm_node->state = NES_CM_STATE_CLOSED;
		FUNC5(cm_node->cm_core, cm_node);
		break;
	case NES_CM_STATE_TSA:
	default:
		FUNC4(NES_DBG_CM, "Error Rcvd FIN for node-%p state = %d\n",
			cm_node, cm_node->state);
		break;
	}
}