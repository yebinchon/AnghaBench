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
union xpc_channel_ctl_flags {scalar_t__ all_flags; } ;
typedef  scalar_t__ u64 ;
struct xpc_partition_sn2 {int /*<<< orphan*/  remote_GPs_pa; int /*<<< orphan*/  remote_GPs; int /*<<< orphan*/  remote_openclose_args_pa; } ;
struct TYPE_2__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {int /*<<< orphan*/  remote_openclose_args; int /*<<< orphan*/  chctl_lock; union xpc_channel_ctl_flags chctl; TYPE_1__ sn; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xpc_partition*,int) ; 
 int /*<<< orphan*/  XPC_GP_SIZE ; 
 int /*<<< orphan*/  XPC_OPENCLOSE_ARGS_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int xpSuccess ; 
 scalar_t__ FUNC5 (union xpc_channel_ctl_flags*) ; 
 scalar_t__ FUNC6 (union xpc_channel_ctl_flags*) ; 
 int /*<<< orphan*/  xpc_chan ; 
 int FUNC7 (struct xpc_partition*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64
FUNC8(struct xpc_partition *part)
{
	struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;
	unsigned long irq_flags;
	union xpc_channel_ctl_flags chctl;
	enum xp_retval ret;

	/*
	 * See if there are any chctl flags to be handled.
	 */

	FUNC3(&part->chctl_lock, irq_flags);
	chctl = part->chctl;
	if (chctl.all_flags != 0)
		part->chctl.all_flags = 0;

	FUNC4(&part->chctl_lock, irq_flags);

	if (FUNC6(&chctl)) {
		ret = FUNC7(part, part->
						     remote_openclose_args,
						     part_sn2->
						     remote_openclose_args_pa,
						     XPC_OPENCLOSE_ARGS_SIZE);
		if (ret != xpSuccess) {
			FUNC0(part, ret);

			FUNC2(xpc_chan, "failed to pull openclose args from "
				"partition %d, ret=%d\n", FUNC1(part),
				ret);

			/* don't bother processing chctl flags anymore */
			chctl.all_flags = 0;
		}
	}

	if (FUNC5(&chctl)) {
		ret = FUNC7(part, part_sn2->remote_GPs,
						     part_sn2->remote_GPs_pa,
						     XPC_GP_SIZE);
		if (ret != xpSuccess) {
			FUNC0(part, ret);

			FUNC2(xpc_chan, "failed to pull GPs from partition "
				"%d, ret=%d\n", FUNC1(part), ret);

			/* don't bother processing chctl flags anymore */
			chctl.all_flags = 0;
		}
	}

	return chctl.all_flags;
}