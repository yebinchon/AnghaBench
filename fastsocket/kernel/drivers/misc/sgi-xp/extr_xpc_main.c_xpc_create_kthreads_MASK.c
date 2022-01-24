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
typedef  scalar_t__ u64 ;
struct xpc_partition {int /*<<< orphan*/  nchannels_engaged; } ;
struct xpc_channel {size_t partid; int flags; scalar_t__ kthreads_idle_limit; int /*<<< orphan*/  lock; int /*<<< orphan*/  kthreads_assigned; int /*<<< orphan*/  number; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {void (* indicate_partition_disengaged ) (struct xpc_partition*) ;int /*<<< orphan*/  (* indicate_partition_engaged ) (struct xpc_partition*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int XPC_C_DISCONNECTING ; 
 int XPC_C_DISCONNECTINGCALLOUT_MADE ; 
 int /*<<< orphan*/  FUNC2 (struct xpc_channel*,int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC8 (int /*<<< orphan*/ ,void*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct xpc_partition*) ; 
 int /*<<< orphan*/  xpLackOfResources ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  xpc_kthread_start ; 
 int /*<<< orphan*/  FUNC12 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC13 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC14 (struct xpc_partition*) ; 
 int /*<<< orphan*/  FUNC15 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 

void
FUNC16(struct xpc_channel *ch, int needed,
		    int ignore_disconnecting)
{
	unsigned long irq_flags;
	u64 args = FUNC3(ch->partid, ch->number);
	struct xpc_partition *part = &xpc_partitions[ch->partid];
	struct task_struct *kthread;
	void (*indicate_partition_disengaged) (struct xpc_partition *) =
		xpc_arch_ops.indicate_partition_disengaged;

	while (needed-- > 0) {

		/*
		 * The following is done on behalf of the newly created
		 * kthread. That kthread is responsible for doing the
		 * counterpart to the following before it exits.
		 */
		if (ignore_disconnecting) {
			if (!FUNC5(&ch->kthreads_assigned)) {
				/* kthreads assigned had gone to zero */
				FUNC0(!(ch->flags &
					 XPC_C_DISCONNECTINGCALLOUT_MADE));
				break;
			}

		} else if (ch->flags & XPC_C_DISCONNECTING) {
			break;

		} else if (FUNC6(&ch->kthreads_assigned) == 1 &&
			   FUNC6(&part->nchannels_engaged) == 1) {
			xpc_arch_ops.indicate_partition_engaged(part);
		}
		(void)FUNC15(part);
		FUNC13(ch);

		kthread = FUNC8(xpc_kthread_start, (void *)args,
				      "xpc%02dc%d", ch->partid, ch->number);
		if (FUNC1(kthread)) {
			/* the fork failed */

			/*
			 * NOTE: if (ignore_disconnecting &&
			 * !(ch->flags & XPC_C_DISCONNECTINGCALLOUT)) is true,
			 * then we'll deadlock if all other kthreads assigned
			 * to this channel are blocked in the channel's
			 * registerer, because the only thing that will unblock
			 * them is the xpDisconnecting callout that this
			 * failed kthread_run() would have made.
			 */

			if (FUNC4(&ch->kthreads_assigned) == 0 &&
			    FUNC4(&part->nchannels_engaged) == 0) {
				indicate_partition_disengaged(part);
			}
			FUNC12(ch);
			FUNC14(part);

			if (FUNC7(&ch->kthreads_assigned) <
			    ch->kthreads_idle_limit) {
				/*
				 * Flag this as an error only if we have an
				 * insufficient #of kthreads for the channel
				 * to function.
				 */
				FUNC9(&ch->lock, irq_flags);
				FUNC2(ch, xpLackOfResources,
						       &irq_flags);
				FUNC10(&ch->lock, irq_flags);
			}
			break;
		}
	}
}