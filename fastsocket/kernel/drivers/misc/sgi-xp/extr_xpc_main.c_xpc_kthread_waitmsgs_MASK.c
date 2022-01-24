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
struct xpc_partition {int dummy; } ;
struct xpc_channel {int flags; scalar_t__ kthreads_idle_limit; int /*<<< orphan*/  kthreads_idle; int /*<<< orphan*/  idle_wq; } ;
struct TYPE_2__ {int (* n_of_deliverable_payloads ) (struct xpc_channel*) ;} ;

/* Variables and functions */
 int XPC_C_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  xpc_chan ; 
 int /*<<< orphan*/  FUNC4 (struct xpc_channel*) ; 

__attribute__((used)) static void
FUNC5(struct xpc_partition *part, struct xpc_channel *ch)
{
	int (*n_of_deliverable_payloads) (struct xpc_channel *) =
		xpc_arch_ops.n_of_deliverable_payloads;

	do {
		/* deliver messages to their intended recipients */

		while (n_of_deliverable_payloads(ch) > 0 &&
		       !(ch->flags & XPC_C_DISCONNECTING)) {
			FUNC4(ch);
		}

		if (FUNC1(&ch->kthreads_idle) >
		    ch->kthreads_idle_limit) {
			/* too many idle kthreads on this channel */
			FUNC0(&ch->kthreads_idle);
			break;
		}

		FUNC2(xpc_chan, "idle kthread calling "
			"wait_event_interruptible_exclusive()\n");

		(void)FUNC3(ch->idle_wq,
				(n_of_deliverable_payloads(ch) > 0 ||
				 (ch->flags & XPC_C_DISCONNECTING)));

		FUNC0(&ch->kthreads_idle);

	} while (!(ch->flags & XPC_C_DISCONNECTING));
}