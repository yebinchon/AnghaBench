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
union xpc_channel_ctl_flags {int /*<<< orphan*/  all_flags; int /*<<< orphan*/ * flags; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  u8 ;
struct xpc_partition_sn2 {int /*<<< orphan*/  notify_IRQ_phys_cpuid; int /*<<< orphan*/  notify_IRQ_nasid; int /*<<< orphan*/  remote_chctl_amo_va; } ;
struct TYPE_2__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {scalar_t__ act_state; TYPE_1__ sn; } ;
struct xpc_channel {size_t partid; size_t number; int /*<<< orphan*/  lock; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  SGI_XPC_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (struct xpc_partition*,int) ; 
 scalar_t__ XPC_P_AS_DEACTIVATING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,size_t,size_t,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 
 int xpSuccess ; 
 int /*<<< orphan*/  xpc_chan ; 
 struct xpc_partition* xpc_partitions ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct xpc_channel *ch, u8 chctl_flag,
			char *chctl_flag_string, unsigned long *irq_flags)
{
	struct xpc_partition *part = &xpc_partitions[ch->partid];
	struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;
	union xpc_channel_ctl_flags chctl = { 0 };
	enum xp_retval ret;

	if (FUNC2(part->act_state != XPC_P_AS_DEACTIVATING)) {
		chctl.flags[ch->number] = chctl_flag;
		ret = FUNC6(part_sn2->remote_chctl_amo_va,
				       chctl.all_flags,
				       part_sn2->notify_IRQ_nasid,
				       part_sn2->notify_IRQ_phys_cpuid,
				       SGI_XPC_NOTIFY);
		FUNC1(xpc_chan, "%s sent to partid=%d, channel=%d, ret=%d\n",
			chctl_flag_string, ch->partid, ch->number, ret);
		if (FUNC5(ret != xpSuccess)) {
			if (irq_flags != NULL)
				FUNC4(&ch->lock, *irq_flags);
			FUNC0(part, ret);
			if (irq_flags != NULL)
				FUNC3(&ch->lock, *irq_flags);
		}
	}
}