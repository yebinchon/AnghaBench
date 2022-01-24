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
struct xpc_channel {int /*<<< orphan*/  kthreads_active; int /*<<< orphan*/  number; int /*<<< orphan*/  partid; int /*<<< orphan*/  key; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {void* (* get_deliverable_payload ) (struct xpc_channel*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xpMsgReceived ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  xpc_chan ; 
 int /*<<< orphan*/  FUNC5 (struct xpc_channel*) ; 

void
FUNC6(struct xpc_channel *ch)
{
	void *payload;

	payload = xpc_arch_ops.get_deliverable_payload(ch);
	if (payload != NULL) {

		/*
		 * This ref is taken to protect the payload itself from being
		 * freed before the user is finished with it, which the user
		 * indicates by calling xpc_initiate_received().
		 */
		FUNC5(ch);

		FUNC1(&ch->kthreads_active);

		if (ch->func != NULL) {
			FUNC2(xpc_chan, "ch->func() called, payload=0x%p "
				"partid=%d channel=%d\n", payload, ch->partid,
				ch->number);

			/* deliver the message to its intended recipient */
			ch->func(xpMsgReceived, ch->partid, ch->number, payload,
				 ch->key);

			FUNC2(xpc_chan, "ch->func() returned, payload=0x%p "
				"partid=%d channel=%d\n", payload, ch->partid,
				ch->number);
		}

		FUNC0(&ch->kthreads_active);
	}
}