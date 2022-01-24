#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nes_qp {int /*<<< orphan*/  ibqp; int /*<<< orphan*/ * cm_node; } ;
struct nes_cm_node {struct nes_qp* nesqp; TYPE_4__* nesvnic; int /*<<< orphan*/  loc_port; scalar_t__ apbvt_set; TYPE_5__* listener; scalar_t__ recv_entry; int /*<<< orphan*/  send_entry; scalar_t__ accept_pend; int /*<<< orphan*/  accelerated; TYPE_1__* cm_core; int /*<<< orphan*/  list; int /*<<< orphan*/  ref_count; } ;
struct nes_cm_core {int /*<<< orphan*/  node_cnt; int /*<<< orphan*/  ht_node_cnt; } ;
struct TYPE_10__ {int /*<<< orphan*/  pend_accepts_cnt; } ;
struct TYPE_9__ {TYPE_3__* nesdev; } ;
struct TYPE_8__ {TYPE_2__* pcidev; } ;
struct TYPE_7__ {int /*<<< orphan*/  devfn; } ;
struct TYPE_6__ {int /*<<< orphan*/  ht_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NES_MANAGE_APBVT_DEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cm_nodes_destroyed ; 
 int /*<<< orphan*/  FUNC7 (struct nes_cm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nes_cm_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nes_cm_core*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC15(struct nes_cm_core *cm_core,
			   struct nes_cm_node *cm_node)
{
	unsigned long flags;
	struct nes_qp *nesqp;

	if (!cm_node)
		return -EINVAL;

	FUNC13(&cm_node->cm_core->ht_lock, flags);
	if (FUNC4(&cm_node->ref_count)) {
		FUNC14(&cm_node->cm_core->ht_lock, flags);
		return 0;
	}
	FUNC9(&cm_node->list);
	FUNC3(&cm_core->ht_node_cnt);
	FUNC14(&cm_node->cm_core->ht_lock, flags);

	/* if the node is destroyed before connection was accelerated */
	if (!cm_node->accelerated && cm_node->accept_pend) {
		FUNC0(!cm_node->listener);
		FUNC3(&cm_node->listener->pend_accepts_cnt);
		FUNC0(FUNC6(&cm_node->listener->pend_accepts_cnt) < 0);
	}
	FUNC2(cm_node->send_entry);
	if (cm_node->recv_entry)
		FUNC7(cm_node, 0);
	if (cm_node->listener) {
		FUNC10(cm_core, cm_node->listener, 0);
	} else {
		if (cm_node->apbvt_set && cm_node->nesvnic) {
			FUNC11(cm_node->nesvnic, cm_node->loc_port,
					 FUNC1(
						 cm_node->nesvnic->nesdev->pcidev->devfn),
					 NES_MANAGE_APBVT_DEL);
		}
	}

	FUNC3(&cm_core->node_cnt);
	FUNC5(&cm_nodes_destroyed);
	nesqp = cm_node->nesqp;
	if (nesqp) {
		nesqp->cm_node = NULL;
		FUNC12(&nesqp->ibqp);
		cm_node->nesqp = NULL;
	}

	FUNC8(cm_node);
	return 0;
}