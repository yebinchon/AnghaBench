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
typedef  short u64 ;
struct xpc_partition {scalar_t__ act_state; scalar_t__ reason; int /*<<< orphan*/  act_lock; scalar_t__ remote_rp_pa; } ;
struct TYPE_2__ {scalar_t__ (* make_first_contact ) (struct xpc_partition*) ;int /*<<< orphan*/  (* request_partition_reactivation ) (struct xpc_partition*) ;int /*<<< orphan*/  (* disallow_hb ) (short) ;int /*<<< orphan*/  (* allow_hb ) (short) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XPC_P_AS_ACTIVATING ; 
 scalar_t__ XPC_P_AS_ACTIVATION_REQ ; 
 scalar_t__ XPC_P_AS_DEACTIVATING ; 
 scalar_t__ XPC_P_AS_INACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,short) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (short) ; 
 scalar_t__ FUNC6 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC7 (short) ; 
 int /*<<< orphan*/  FUNC8 (struct xpc_partition*) ; 
 scalar_t__ xpReactivating ; 
 scalar_t__ xpSuccess ; 
 short xp_max_npartitions ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  FUNC9 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC10 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC11 (struct xpc_partition*) ; 
 int /*<<< orphan*/  xpc_part ; 
 int /*<<< orphan*/  FUNC12 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC13 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 
 scalar_t__ FUNC14 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC15 (struct xpc_partition*) ; 

__attribute__((used)) static int
FUNC16(void *__partid)
{
	short partid = (u64)__partid;
	struct xpc_partition *part = &xpc_partitions[partid];
	unsigned long irq_flags;

	FUNC0(partid < 0 || partid >= xp_max_npartitions);

	FUNC3(&part->act_lock, irq_flags);

	if (part->act_state == XPC_P_AS_DEACTIVATING) {
		part->act_state = XPC_P_AS_INACTIVE;
		FUNC4(&part->act_lock, irq_flags);
		part->remote_rp_pa = 0;
		return 0;
	}

	/* indicate the thread is activating */
	FUNC0(part->act_state != XPC_P_AS_ACTIVATION_REQ);
	part->act_state = XPC_P_AS_ACTIVATING;

	FUNC1(part, 0, 0);
	FUNC4(&part->act_lock, irq_flags);

	FUNC2(xpc_part, "activating partition %d\n", partid);

	xpc_arch_ops.allow_hb(partid);

	if (FUNC14(part) == xpSuccess) {
		(void)FUNC13(part);	/* this will always succeed */

		if (xpc_arch_ops.make_first_contact(part) == xpSuccess) {
			FUNC10(part);
			FUNC9(part);
			/* won't return until partition is deactivating */
		}

		FUNC12(part);
		FUNC15(part);
	}

	xpc_arch_ops.disallow_hb(partid);
	FUNC11(part);

	if (part->reason == xpReactivating) {
		/* interrupting ourselves results in activating partition */
		xpc_arch_ops.request_partition_reactivation(part);
	}

	return 0;
}