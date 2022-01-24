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
typedef  scalar_t__ u64 ;
struct xpc_partition_sn2 {int /*<<< orphan*/ * local_chctl_amo_va; int /*<<< orphan*/ * local_GPs; int /*<<< orphan*/  local_GPs_base; int /*<<< orphan*/ * remote_GPs; int /*<<< orphan*/  remote_GPs_base; int /*<<< orphan*/ * local_openclose_args; int /*<<< orphan*/  local_openclose_args_base; int /*<<< orphan*/  dropped_notify_IRQ_timer; } ;
struct TYPE_3__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {TYPE_1__ sn; } ;
struct TYPE_4__ {scalar_t__ magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGI_XPC_NOTIFY ; 
 short FUNC0 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* xpc_vars_part_sn2 ; 

__attribute__((used)) static void
FUNC4(struct xpc_partition *part)
{
	struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;
	short partid = FUNC0(part);

	/*
	 * Indicate that the variables specific to the remote partition are no
	 * longer available for its use.
	 */
	xpc_vars_part_sn2[partid].magic = 0;

	/* in case we've still got outstanding timers registered... */
	FUNC1(&part_sn2->dropped_notify_IRQ_timer);
	FUNC2(SGI_XPC_NOTIFY, (void *)(u64)partid);

	FUNC3(part_sn2->local_openclose_args_base);
	part_sn2->local_openclose_args = NULL;
	FUNC3(part_sn2->remote_GPs_base);
	part_sn2->remote_GPs = NULL;
	FUNC3(part_sn2->local_GPs_base);
	part_sn2->local_GPs = NULL;
	part_sn2->local_chctl_amo_va = NULL;
}