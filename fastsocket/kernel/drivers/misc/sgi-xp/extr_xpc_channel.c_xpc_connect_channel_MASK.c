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
struct xpc_registration {scalar_t__ entry_size; int /*<<< orphan*/  mutex; int /*<<< orphan*/  nentries; int /*<<< orphan*/  key; int /*<<< orphan*/ * func; int /*<<< orphan*/  idle_limit; int /*<<< orphan*/  assigned_limit; } ;
struct xpc_channel {size_t number; int flags; int reason; scalar_t__ entry_size; size_t partid; int /*<<< orphan*/  lock; int /*<<< orphan*/  local_nentries; int /*<<< orphan*/  key; int /*<<< orphan*/ * func; int /*<<< orphan*/  kthreads_active; int /*<<< orphan*/  kthreads_idle; int /*<<< orphan*/  kthreads_assigned; int /*<<< orphan*/  kthreads_idle_limit; int /*<<< orphan*/  kthreads_assigned_limit; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_4__ {int /*<<< orphan*/  (* send_chctl_openrequest ) (struct xpc_channel*,unsigned long*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  nchannels_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int XPC_C_CONNECTED ; 
 int XPC_C_CONNECTING ; 
 int XPC_C_DISCONNECTED ; 
 int XPC_C_DISCONNECTING ; 
 int XPC_C_OPENREQUEST ; 
 int XPC_C_ROPENREQUEST ; 
 int /*<<< orphan*/  FUNC2 (struct xpc_channel*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct xpc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct xpc_channel*,unsigned long*) ; 
 int xpRetry ; 
 int xpSuccess ; 
 int xpUnequalMsgSizes ; 
 int xpUnregistered ; 
 TYPE_2__ xpc_arch_ops ; 
 TYPE_1__* xpc_partitions ; 
 int /*<<< orphan*/  FUNC11 (struct xpc_channel*,unsigned long*) ; 
 struct xpc_registration* xpc_registrations ; 

__attribute__((used)) static enum xp_retval
FUNC12(struct xpc_channel *ch)
{
	unsigned long irq_flags;
	struct xpc_registration *registration = &xpc_registrations[ch->number];

	if (FUNC6(&registration->mutex) == 0)
		return xpRetry;

	if (!FUNC1(ch->number)) {
		FUNC7(&registration->mutex);
		return xpUnregistered;
	}

	FUNC8(&ch->lock, irq_flags);

	FUNC0(ch->flags & XPC_C_CONNECTED);
	FUNC0(ch->flags & XPC_C_OPENREQUEST);

	if (ch->flags & XPC_C_DISCONNECTING) {
		FUNC9(&ch->lock, irq_flags);
		FUNC7(&registration->mutex);
		return ch->reason;
	}

	/* add info from the channel connect registration to the channel */

	ch->kthreads_assigned_limit = registration->assigned_limit;
	ch->kthreads_idle_limit = registration->idle_limit;
	FUNC0(FUNC5(&ch->kthreads_assigned) != 0);
	FUNC0(FUNC5(&ch->kthreads_idle) != 0);
	FUNC0(FUNC5(&ch->kthreads_active) != 0);

	ch->func = registration->func;
	FUNC0(registration->func == NULL);
	ch->key = registration->key;

	ch->local_nentries = registration->nentries;

	if (ch->flags & XPC_C_ROPENREQUEST) {
		if (registration->entry_size != ch->entry_size) {
			/* the local and remote sides aren't the same */

			/*
			 * Because XPC_DISCONNECT_CHANNEL() can block we're
			 * forced to up the registration sema before we unlock
			 * the channel lock. But that's okay here because we're
			 * done with the part that required the registration
			 * sema. XPC_DISCONNECT_CHANNEL() requires that the
			 * channel lock be locked and will unlock and relock
			 * the channel lock as needed.
			 */
			FUNC7(&registration->mutex);
			FUNC2(ch, xpUnequalMsgSizes,
					       &irq_flags);
			FUNC9(&ch->lock, irq_flags);
			return xpUnequalMsgSizes;
		}
	} else {
		ch->entry_size = registration->entry_size;

		FUNC3(ch, 0, 0);
		ch->flags &= ~XPC_C_DISCONNECTED;

		FUNC4(&xpc_partitions[ch->partid].nchannels_active);
	}

	FUNC7(&registration->mutex);

	/* initiate the connection */

	ch->flags |= (XPC_C_OPENREQUEST | XPC_C_CONNECTING);
	xpc_arch_ops.send_chctl_openrequest(ch, &irq_flags);

	FUNC11(ch, &irq_flags);

	FUNC9(&ch->lock, irq_flags);

	return xpSuccess;
}