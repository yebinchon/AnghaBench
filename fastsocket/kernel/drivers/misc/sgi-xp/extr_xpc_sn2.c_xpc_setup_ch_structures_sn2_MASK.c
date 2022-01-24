#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct timer_list {void (* function ) (unsigned long) ;unsigned long data; scalar_t__ expires; } ;
struct xpc_partition_sn2 {int /*<<< orphan*/ * local_GPs; int /*<<< orphan*/  local_GPs_base; int /*<<< orphan*/ * remote_GPs; int /*<<< orphan*/  remote_GPs_base; int /*<<< orphan*/ * local_openclose_args; int /*<<< orphan*/  local_openclose_args_base; int /*<<< orphan*/ * local_chctl_amo_va; struct timer_list dropped_notify_IRQ_timer; int /*<<< orphan*/  notify_IRQ_owner; int /*<<< orphan*/ * remote_chctl_amo_va; scalar_t__ notify_IRQ_phys_cpuid; scalar_t__ notify_IRQ_nasid; scalar_t__ remote_openclose_args_pa; scalar_t__ remote_GPs_pa; } ;
struct TYPE_5__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {int nchannels; TYPE_3__* channels; TYPE_1__ sn; } ;
struct xpc_channel_sn2 {int /*<<< orphan*/  msg_to_pull_mutex; int /*<<< orphan*/ * local_openclose_args; int /*<<< orphan*/ * local_GP; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_8__ {int nchannels; int /*<<< orphan*/  magic; int /*<<< orphan*/  notify_IRQ_phys_cpuid; int /*<<< orphan*/  notify_IRQ_nasid; void* chctl_amo_pa; void* openclose_args_pa; void* GPs_pa; } ;
struct TYPE_6__ {struct xpc_channel_sn2 sn2; } ;
struct TYPE_7__ {TYPE_2__ sn; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  SGI_XPC_NOTIFY ; 
 scalar_t__ XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL ; 
 int /*<<< orphan*/  XPC_GP_SIZE ; 
 int /*<<< orphan*/  XPC_OPENCLOSE_ARGS_SIZE ; 
 short FUNC0 (struct xpc_partition*) ; 
 int /*<<< orphan*/  XPC_VP_MAGIC1_SN2 ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct timer_list*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,short) ; 
 int xpLackOfResources ; 
 int xpNoMemory ; 
 int xpSuccess ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xpc_chan ; 
 scalar_t__ xpc_check_for_dropped_notify_IRQ_sn2 ; 
 int /*<<< orphan*/  xpc_handle_notify_IRQ_sn2 ; 
 int /*<<< orphan*/ * FUNC12 (short) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* xpc_vars_part_sn2 ; 

__attribute__((used)) static enum xp_retval
FUNC14(struct xpc_partition *part)
{
	struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;
	struct xpc_channel_sn2 *ch_sn2;
	enum xp_retval retval;
	int ret;
	int cpuid;
	int ch_number;
	struct timer_list *timer;
	short partid = FUNC0(part);

	/* allocate all the required GET/PUT values */

	part_sn2->local_GPs =
	    FUNC13(XPC_GP_SIZE, GFP_KERNEL,
					  &part_sn2->local_GPs_base);
	if (part_sn2->local_GPs == NULL) {
		FUNC4(xpc_chan, "can't get memory for local get/put "
			"values\n");
		return xpNoMemory;
	}

	part_sn2->remote_GPs =
	    FUNC13(XPC_GP_SIZE, GFP_KERNEL,
					  &part_sn2->remote_GPs_base);
	if (part_sn2->remote_GPs == NULL) {
		FUNC4(xpc_chan, "can't get memory for remote get/put "
			"values\n");
		retval = xpNoMemory;
		goto out_1;
	}

	part_sn2->remote_GPs_pa = 0;

	/* allocate all the required open and close args */

	part_sn2->local_openclose_args =
	    FUNC13(XPC_OPENCLOSE_ARGS_SIZE,
					  GFP_KERNEL, &part_sn2->
					  local_openclose_args_base);
	if (part_sn2->local_openclose_args == NULL) {
		FUNC4(xpc_chan, "can't get memory for local connect args\n");
		retval = xpNoMemory;
		goto out_2;
	}

	part_sn2->remote_openclose_args_pa = 0;

	part_sn2->local_chctl_amo_va = FUNC12(partid);

	part_sn2->notify_IRQ_nasid = 0;
	part_sn2->notify_IRQ_phys_cpuid = 0;
	part_sn2->remote_chctl_amo_va = NULL;

	FUNC10(part_sn2->notify_IRQ_owner, "xpc%02d", partid);
	ret = FUNC9(SGI_XPC_NOTIFY, xpc_handle_notify_IRQ_sn2,
			  IRQF_SHARED, part_sn2->notify_IRQ_owner,
			  (void *)(u64)partid);
	if (ret != 0) {
		FUNC4(xpc_chan, "can't register NOTIFY IRQ handler, "
			"errno=%d\n", -ret);
		retval = xpLackOfResources;
		goto out_3;
	}

	/* Setup a timer to check for dropped notify IRQs */
	timer = &part_sn2->dropped_notify_IRQ_timer;
	FUNC5(timer);
	timer->function =
	    (void (*)(unsigned long))xpc_check_for_dropped_notify_IRQ_sn2;
	timer->data = (unsigned long)part;
	timer->expires = jiffies + XPC_DROPPED_NOTIFY_IRQ_WAIT_INTERVAL;
	FUNC1(timer);

	for (ch_number = 0; ch_number < part->nchannels; ch_number++) {
		ch_sn2 = &part->channels[ch_number].sn.sn2;

		ch_sn2->local_GP = &part_sn2->local_GPs[ch_number];
		ch_sn2->local_openclose_args =
		    &part_sn2->local_openclose_args[ch_number];

		FUNC7(&ch_sn2->msg_to_pull_mutex);
	}

	/*
	 * Setup the per partition specific variables required by the
	 * remote partition to establish channel connections with us.
	 *
	 * The setting of the magic # indicates that these per partition
	 * specific variables are ready to be used.
	 */
	xpc_vars_part_sn2[partid].GPs_pa = FUNC11(part_sn2->local_GPs);
	xpc_vars_part_sn2[partid].openclose_args_pa =
	    FUNC11(part_sn2->local_openclose_args);
	xpc_vars_part_sn2[partid].chctl_amo_pa =
	    FUNC11(part_sn2->local_chctl_amo_va);
	cpuid = FUNC8();	/* any CPU in this partition will do */
	xpc_vars_part_sn2[partid].notify_IRQ_nasid = FUNC3(cpuid);
	xpc_vars_part_sn2[partid].notify_IRQ_phys_cpuid =
	    FUNC2(cpuid);
	xpc_vars_part_sn2[partid].nchannels = part->nchannels;
	xpc_vars_part_sn2[partid].magic = XPC_VP_MAGIC1_SN2;

	return xpSuccess;

	/* setup of ch structures failed */
out_3:
	FUNC6(part_sn2->local_openclose_args_base);
	part_sn2->local_openclose_args = NULL;
out_2:
	FUNC6(part_sn2->remote_GPs_base);
	part_sn2->remote_GPs = NULL;
out_1:
	FUNC6(part_sn2->local_GPs_base);
	part_sn2->local_GPs = NULL;
	return retval;
}