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
struct sk_buff {int dummy; } ;
struct nes_cm_node {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_CM_EVENT_ABORTED ; 
 int /*<<< orphan*/  NES_CM_STATE_CLOSED ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  FUNC0 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_cm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct nes_cm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nes_cm_node*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct nes_cm_node *cm_node, struct sk_buff *skb,
			    int reset)
{
	FUNC1(cm_node);
	if (reset) {
		FUNC4(NES_DBG_CM, "ERROR active err called for cm_node=%p, "
			  "state=%d\n", cm_node, cm_node->state);
		FUNC0(cm_node);
		FUNC5(cm_node, skb);
	} else {
		FUNC3(skb);
	}

	cm_node->state = NES_CM_STATE_CLOSED;
	FUNC2(cm_node, NES_CM_EVENT_ABORTED);
}