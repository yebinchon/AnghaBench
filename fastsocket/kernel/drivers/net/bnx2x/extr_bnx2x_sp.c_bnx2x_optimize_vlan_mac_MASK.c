#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_exe_queue_obj {struct bnx2x_exeq_elem* (* get ) (struct bnx2x_exe_queue_obj*,struct bnx2x_exeq_elem*) ;} ;
struct bnx2x_vlan_mac_obj {int /*<<< orphan*/  (* get_credit ) (struct bnx2x_vlan_mac_obj*) ;int /*<<< orphan*/  (* put_credit ) (struct bnx2x_vlan_mac_obj*) ;struct bnx2x_exe_queue_obj exe_queue; } ;
union bnx2x_qable_obj {struct bnx2x_vlan_mac_obj vlan_mac; } ;
struct TYPE_3__ {int cmd; int /*<<< orphan*/  vlan_mac_flags; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct bnx2x_exeq_elem {int /*<<< orphan*/  link; TYPE_2__ cmd_data; } ;
struct bnx2x {int dummy; } ;
typedef  int /*<<< orphan*/  query ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_DONT_CONSUME_CAM_CREDIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
#define  BNX2X_VLAN_MAC_ADD 129 
#define  BNX2X_VLAN_MAC_DEL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_exeq_elem*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_exeq_elem*,struct bnx2x_exeq_elem*,int) ; 
 struct bnx2x_exeq_elem* FUNC5 (struct bnx2x_exe_queue_obj*,struct bnx2x_exeq_elem*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x_vlan_mac_obj*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x_vlan_mac_obj*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct bnx2x *bp,
				   union bnx2x_qable_obj *qo,
				   struct bnx2x_exeq_elem *elem)
{
	struct bnx2x_exeq_elem query, *pos;
	struct bnx2x_vlan_mac_obj *o = &qo->vlan_mac;
	struct bnx2x_exe_queue_obj *exeq = &o->exe_queue;

	FUNC4(&query, elem, sizeof(query));

	switch (elem->cmd_data.vlan_mac.cmd) {
	case BNX2X_VLAN_MAC_ADD:
		query.cmd_data.vlan_mac.cmd = BNX2X_VLAN_MAC_DEL;
		break;
	case BNX2X_VLAN_MAC_DEL:
		query.cmd_data.vlan_mac.cmd = BNX2X_VLAN_MAC_ADD;
		break;
	default:
		/* Don't handle anything other than ADD or DEL */
		return 0;
	}

	/* If we found the appropriate element - delete it */
	pos = exeq->get(exeq, &query);
	if (pos) {

		/* Return the credit of the optimized command */
		if (!FUNC8(BNX2X_DONT_CONSUME_CAM_CREDIT,
			      &pos->cmd_data.vlan_mac.vlan_mac_flags)) {
			if ((query.cmd_data.vlan_mac.cmd ==
			     BNX2X_VLAN_MAC_ADD) && !o->put_credit(o)) {
				FUNC0("Failed to return the credit for the optimized ADD command\n");
				return -EINVAL;
			} else if (!o->get_credit(o)) { /* VLAN_MAC_DEL */
				FUNC0("Failed to recover the credit from the optimized DEL command\n");
				return -EINVAL;
			}
		}

		FUNC1(BNX2X_MSG_SP, "Optimizing %s command\n",
			   (elem->cmd_data.vlan_mac.cmd == BNX2X_VLAN_MAC_ADD) ?
			   "ADD" : "DEL");

		FUNC3(&pos->link);
		FUNC2(bp, pos);
		return 1;
	}

	return 0;
}