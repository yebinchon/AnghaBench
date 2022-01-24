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
struct xpc_channel {int kthreads_assigned_limit; int /*<<< orphan*/  number; int /*<<< orphan*/  partid; int /*<<< orphan*/  idle_wq; int /*<<< orphan*/  kthreads_assigned; int /*<<< orphan*/  kthreads_idle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  xpc_chan ; 
 int /*<<< orphan*/  FUNC4 (struct xpc_channel*,int,int /*<<< orphan*/ ) ; 

void
FUNC5(struct xpc_channel *ch, int needed)
{
	int idle = FUNC1(&ch->kthreads_idle);
	int assigned = FUNC1(&ch->kthreads_assigned);
	int wakeup;

	FUNC0(needed <= 0);

	if (idle > 0) {
		wakeup = (needed > idle) ? idle : needed;
		needed -= wakeup;

		FUNC2(xpc_chan, "wakeup %d idle kthreads, partid=%d, "
			"channel=%d\n", wakeup, ch->partid, ch->number);

		/* only wakeup the requested number of kthreads */
		FUNC3(&ch->idle_wq, wakeup);
	}

	if (needed <= 0)
		return;

	if (needed + assigned > ch->kthreads_assigned_limit) {
		needed = ch->kthreads_assigned_limit - assigned;
		if (needed <= 0)
			return;
	}

	FUNC2(xpc_chan, "create %d new kthreads, partid=%d, channel=%d\n",
		needed, ch->partid, ch->number);

	FUNC4(ch, needed, 0);
}