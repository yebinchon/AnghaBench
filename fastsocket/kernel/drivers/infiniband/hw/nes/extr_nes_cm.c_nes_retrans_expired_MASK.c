#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nes_cm_node {int state; struct iw_cm_id* cm_id; int /*<<< orphan*/  cm_core; } ;
struct iw_cm_id {int /*<<< orphan*/  (* rem_ref ) (struct iw_cm_id*) ;} ;
typedef  enum nes_cm_node_state { ____Placeholder_nes_cm_node_state } nes_cm_node_state ;

/* Variables and functions */
 int /*<<< orphan*/  NES_CM_EVENT_ABORTED ; 
 int NES_CM_STATE_CLOSED ; 
#define  NES_CM_STATE_CLOSING 131 
#define  NES_CM_STATE_FIN_WAIT1 130 
#define  NES_CM_STATE_LAST_ACK 129 
#define  NES_CM_STATE_SYN_RCVD 128 
 int /*<<< orphan*/  FUNC0 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_cm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct nes_cm_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iw_cm_id*) ; 

__attribute__((used)) static void FUNC5(struct nes_cm_node *cm_node)
{
	struct iw_cm_id *cm_id = cm_node->cm_id;
	enum nes_cm_node_state state = cm_node->state;
	cm_node->state = NES_CM_STATE_CLOSED;

	switch (state) {
	case NES_CM_STATE_SYN_RCVD:
	case NES_CM_STATE_CLOSING:
		FUNC2(cm_node->cm_core, cm_node);
		break;
	case NES_CM_STATE_LAST_ACK:
	case NES_CM_STATE_FIN_WAIT1:
		if (cm_node->cm_id)
			cm_id->rem_ref(cm_id);
		FUNC3(cm_node, NULL);
		break;
	default:
		FUNC0(cm_node);
		FUNC3(cm_node, NULL);
		FUNC1(cm_node, NES_CM_EVENT_ABORTED);
	}
}