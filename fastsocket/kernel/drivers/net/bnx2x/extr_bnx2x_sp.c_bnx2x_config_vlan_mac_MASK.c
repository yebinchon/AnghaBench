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
struct bnx2x_vlan_mac_ramrod_params {unsigned long ramrod_flags; struct bnx2x_vlan_mac_obj* vlan_mac_obj; } ;
struct bnx2x_raw_obj {int (* wait_comp ) (struct bnx2x*,struct bnx2x_raw_obj*) ;int /*<<< orphan*/  (* clear_pending ) (struct bnx2x_raw_obj*) ;} ;
struct bnx2x_vlan_mac_obj {int /*<<< orphan*/  exe_queue; struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  RAMROD_CONT ; 
 int /*<<< orphan*/  RAMROD_DRV_CLR_ONLY ; 
 int /*<<< orphan*/  RAMROD_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ *,unsigned long*) ; 
 int FUNC4 (struct bnx2x*,struct bnx2x_vlan_mac_ramrod_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_raw_obj*) ; 
 int FUNC6 (struct bnx2x*,struct bnx2x_raw_obj*) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned long*) ; 

int FUNC8(
	struct bnx2x *bp,
	struct bnx2x_vlan_mac_ramrod_params *p)
{
	int rc = 0;
	struct bnx2x_vlan_mac_obj *o = p->vlan_mac_obj;
	unsigned long *ramrod_flags = &p->ramrod_flags;
	bool cont = FUNC7(RAMROD_CONT, ramrod_flags);
	struct bnx2x_raw_obj *raw = &o->raw;

	/*
	 * Add new elements to the execution list for commands that require it.
	 */
	if (!cont) {
		rc = FUNC4(bp, p);
		if (rc)
			return rc;
	}

	/* If nothing will be executed further in this iteration we want to
	 * return PENDING if there are pending commands
	 */
	if (!FUNC1(&o->exe_queue))
		rc = 1;

	if (FUNC7(RAMROD_DRV_CLR_ONLY, ramrod_flags))  {
		FUNC0(BNX2X_MSG_SP, "RAMROD_DRV_CLR_ONLY requested: clearing a pending bit.\n");
		raw->clear_pending(raw);
	}

	/* Execute commands if required */
	if (cont || FUNC7(RAMROD_EXEC, ramrod_flags) ||
	    FUNC7(RAMROD_COMP_WAIT, ramrod_flags)) {
		rc = FUNC3(bp, &o->exe_queue, ramrod_flags);
		if (rc < 0)
			return rc;
	}

	/* RAMROD_COMP_WAIT is a superset of RAMROD_EXEC. If it was set
	 * then user want to wait until the last command is done.
	 */
	if (FUNC7(RAMROD_COMP_WAIT, &p->ramrod_flags)) {
		/* Wait maximum for the current exe_queue length iterations plus
		 * one (for the current pending command).
		 */
		int max_iterations = FUNC2(&o->exe_queue) + 1;

		while (!FUNC1(&o->exe_queue) &&
		       max_iterations--) {

			/* Wait for the current command to complete */
			rc = raw->wait_comp(bp, raw);
			if (rc)
				return rc;

			/* Make a next step */
			rc = FUNC3(bp, &o->exe_queue,
						  ramrod_flags);
			if (rc < 0)
				return rc;
		}

		return 0;
	}

	return rc;
}