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
struct cardstate {int commands_pending; } ;
struct at_state_t {int /*<<< orphan*/  pending_commands; struct cardstate* cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CMD ; 
 int /*<<< orphan*/  PC_ACCEPT ; 
 int /*<<< orphan*/  PC_HUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct at_state_t*) ; 

__attribute__((used)) static void FUNC2(struct at_state_t *at_state)
{
	struct cardstate *cs = at_state->cs;
	int retval;

	retval = FUNC1(at_state);

	if (retval == 0) {
		at_state->pending_commands |= PC_ACCEPT;
		FUNC0(DEBUG_CMD, "Scheduling PC_ACCEPT");
		cs->commands_pending = 1;
	} else {
		/* error reset */
		at_state->pending_commands |= PC_HUP;
		FUNC0(DEBUG_CMD, "Scheduling PC_HUP");
		cs->commands_pending = 1;
	}
}