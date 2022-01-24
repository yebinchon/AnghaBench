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
union xpc_channel_ctl_flags {int /*<<< orphan*/  all_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  all_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  local_chctl_amo_va; } ;
struct TYPE_5__ {TYPE_1__ sn2; } ;
struct xpc_partition {int /*<<< orphan*/  chctl_lock; TYPE_3__ chctl; TYPE_2__ sn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  xpc_chan ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xpc_partition*) ; 

__attribute__((used)) static void
FUNC6(struct xpc_partition *part)
{
	union xpc_channel_ctl_flags chctl;
	unsigned long irq_flags;

	chctl.all_flags = FUNC4(part->sn.sn2.
						  local_chctl_amo_va);
	if (chctl.all_flags == 0)
		return;

	FUNC2(&part->chctl_lock, irq_flags);
	part->chctl.all_flags |= chctl.all_flags;
	FUNC3(&part->chctl_lock, irq_flags);

	FUNC1(xpc_chan, "received notify IRQ from partid=%d, chctl.all_flags="
		"0x%llx\n", FUNC0(part), chctl.all_flags);

	FUNC5(part);
}