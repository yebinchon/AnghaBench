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
struct TYPE_2__ {int* flags; } ;
struct xpc_partition {scalar_t__ act_state; int /*<<< orphan*/  chctl_lock; TYPE_1__ chctl; struct xpc_channel* channels; } ;
struct xpc_channel {int flags; int delayed_chctl_flags; size_t number; int /*<<< orphan*/  lock; int /*<<< orphan*/  wdisconnect_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_C_DISCONNECTED ; 
 int XPC_C_WDISCONNECT ; 
 scalar_t__ XPC_P_AS_DEACTIVATING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 short xp_max_npartitions ; 
 int /*<<< orphan*/  FUNC6 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC7 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 
 int /*<<< orphan*/  FUNC8 (struct xpc_partition*) ; 

void
FUNC9(int ch_number)
{
	unsigned long irq_flags;
	short partid;
	struct xpc_partition *part;
	struct xpc_channel *ch;
	int wakeup_channel_mgr;

	/* now wait for all callouts to the caller's function to cease */
	for (partid = 0; partid < xp_max_npartitions; partid++) {
		part = &xpc_partitions[partid];

		if (!FUNC7(part))
			continue;

		ch = &part->channels[ch_number];

		if (!(ch->flags & XPC_C_WDISCONNECT)) {
			FUNC6(part);
			continue;
		}

		FUNC5(&ch->wdisconnect_wait);

		FUNC2(&ch->lock, irq_flags);
		FUNC0(!(ch->flags & XPC_C_DISCONNECTED));
		wakeup_channel_mgr = 0;

		if (ch->delayed_chctl_flags) {
			if (part->act_state != XPC_P_AS_DEACTIVATING) {
				FUNC1(&part->chctl_lock);
				part->chctl.flags[ch->number] |=
				    ch->delayed_chctl_flags;
				FUNC3(&part->chctl_lock);
				wakeup_channel_mgr = 1;
			}
			ch->delayed_chctl_flags = 0;
		}

		ch->flags &= ~XPC_C_WDISCONNECT;
		FUNC4(&ch->lock, irq_flags);

		if (wakeup_channel_mgr)
			FUNC8(part);

		FUNC6(part);
	}
}