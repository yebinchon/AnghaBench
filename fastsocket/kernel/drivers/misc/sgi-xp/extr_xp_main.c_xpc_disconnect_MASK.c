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
struct xpc_registration {int /*<<< orphan*/  mutex; scalar_t__ idle_limit; scalar_t__ assigned_limit; scalar_t__ entry_size; scalar_t__ nentries; int /*<<< orphan*/ * key; int /*<<< orphan*/ * func; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_MAX_NCHANNELS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ xpc_interface ; 
 struct xpc_registration* xpc_registrations ; 

void
FUNC4(int ch_number)
{
	struct xpc_registration *registration;

	FUNC0(ch_number < 0 || ch_number >= XPC_MAX_NCHANNELS);

	registration = &xpc_registrations[ch_number];

	/*
	 * We've decided not to make this a down_interruptible(), since we
	 * figured XPC's users will just turn around and call xpc_disconnect()
	 * again anyways, so we might as well wait, if need be.
	 */
	FUNC1(&registration->mutex);

	/* if !XPC_CHANNEL_REGISTERED(ch_number) */
	if (registration->func == NULL) {
		FUNC2(&registration->mutex);
		return;
	}

	/* remove the connection registration for the specified channel */
	registration->func = NULL;
	registration->key = NULL;
	registration->nentries = 0;
	registration->entry_size = 0;
	registration->assigned_limit = 0;
	registration->idle_limit = 0;

	xpc_interface.disconnect(ch_number);

	FUNC2(&registration->mutex);

	return;
}