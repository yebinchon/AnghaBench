#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xpc_vars_sn2 {int /*<<< orphan*/ * heartbeating_to_mask; int /*<<< orphan*/  heartbeat; } ;
struct TYPE_4__ {unsigned long vars_pa; } ;
struct TYPE_5__ {TYPE_1__ sn2; } ;
struct xpc_rsvd_page {int version; unsigned long ts_jiffies; short SAL_partid; TYPE_2__ sn; } ;
struct xpc_partition_sn2 {scalar_t__ remote_vars_version; } ;
struct TYPE_6__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {scalar_t__ act_state; unsigned long remote_rp_ts_jiffies; scalar_t__ disengage_timeout; int /*<<< orphan*/  remote_rp_version; int /*<<< orphan*/  activate_IRQ_rcvd; TYPE_3__ sn; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*,int) ; 
 scalar_t__ XPC_P_AS_INACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int xpOtherGoingDown ; 
 int xpReactivating ; 
 int xpSuccess ; 
 int /*<<< orphan*/  FUNC4 (struct xpc_partition*) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,struct xpc_rsvd_page*,unsigned long*) ; 
 int FUNC6 (unsigned long,struct xpc_vars_sn2*) ; 
 int /*<<< orphan*/  xpc_part ; 
 int FUNC7 (short) ; 
 scalar_t__ FUNC8 (struct xpc_partition*) ; 
 int FUNC9 (short) ; 
 struct xpc_partition* xpc_partitions ; 
 scalar_t__ xpc_remote_copy_buffer_sn2 ; 
 int /*<<< orphan*/  FUNC10 (struct xpc_partition*,int,unsigned long*,unsigned long,unsigned long,struct xpc_vars_sn2*) ; 

__attribute__((used)) static void
FUNC11(int nasid)
{
	struct xpc_rsvd_page *remote_rp;
	struct xpc_vars_sn2 *remote_vars;
	unsigned long remote_rp_pa;
	unsigned long remote_vars_pa;
	int remote_rp_version;
	int reactivate = 0;
	unsigned long remote_rp_ts_jiffies = 0;
	short partid;
	struct xpc_partition *part;
	struct xpc_partition_sn2 *part_sn2;
	enum xp_retval ret;

	/* pull over the reserved page structure */

	remote_rp = (struct xpc_rsvd_page *)xpc_remote_copy_buffer_sn2;

	ret = FUNC5(nasid, NULL, remote_rp, &remote_rp_pa);
	if (ret != xpSuccess) {
		FUNC3(xpc_part, "unable to get reserved page from nasid %d, "
			 "which sent interrupt, reason=%d\n", nasid, ret);
		return;
	}

	remote_vars_pa = remote_rp->sn.sn2.vars_pa;
	remote_rp_version = remote_rp->version;
	remote_rp_ts_jiffies = remote_rp->ts_jiffies;

	partid = remote_rp->SAL_partid;
	part = &xpc_partitions[partid];
	part_sn2 = &part->sn.sn2;

	/* pull over the cross partition variables */

	remote_vars = (struct xpc_vars_sn2 *)xpc_remote_copy_buffer_sn2;

	ret = FUNC6(remote_vars_pa, remote_vars);
	if (ret != xpSuccess) {
		FUNC3(xpc_part, "unable to get XPC variables from nasid %d, "
			 "which sent interrupt, reason=%d\n", nasid, ret);

		FUNC1(part, ret);
		return;
	}

	part->activate_IRQ_rcvd++;

	FUNC2(xpc_part, "partid for nasid %d is %d; IRQs = %d; HB = "
		"%lld:0x%lx\n", (int)nasid, (int)partid,
		part->activate_IRQ_rcvd,
		remote_vars->heartbeat, remote_vars->heartbeating_to_mask[0]);

	if (FUNC8(part) &&
	    part->act_state == XPC_P_AS_INACTIVE) {

		FUNC10(part, remote_rp_version,
					      &remote_rp_ts_jiffies,
					      remote_rp_pa, remote_vars_pa,
					      remote_vars);

		if (FUNC7(partid)) {
			/*
			 * Other side is waiting on us to deactivate even though
			 * we already have.
			 */
			return;
		}

		FUNC4(part);
		return;
	}

	FUNC0(part->remote_rp_version == 0);
	FUNC0(part_sn2->remote_vars_version == 0);

	if (remote_rp_ts_jiffies != part->remote_rp_ts_jiffies) {

		/* the other side rebooted */

		FUNC0(FUNC9(partid));
		FUNC0(FUNC7(partid));

		FUNC10(part, remote_rp_version,
					      &remote_rp_ts_jiffies,
					      remote_rp_pa, remote_vars_pa,
					      remote_vars);
		reactivate = 1;
	}

	if (part->disengage_timeout > 0 && !FUNC8(part)) {
		/* still waiting on other side to disengage from us */
		return;
	}

	if (reactivate)
		FUNC1(part, xpReactivating);
	else if (FUNC7(partid))
		FUNC1(part, xpOtherGoingDown);
}