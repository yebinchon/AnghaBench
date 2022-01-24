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
struct TYPE_2__ {int pending_commands; } ;
struct cardstate {int mstate; int commands_pending; TYPE_1__ at_state; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CMD ; 
 int /*<<< orphan*/  M_UNKNOWN ; 
 int PC_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*) ; 

__attribute__((used)) static void FUNC2(struct cardstate *cs, int state)
{
	if (cs->at_state.pending_commands & PC_INIT) {
		FUNC0(DEBUG_CMD, "not scheduling PC_INIT again");
		return;
	}
	cs->mstate = state;
	cs->mode = M_UNKNOWN;
	FUNC1(cs);
	cs->at_state.pending_commands |= PC_INIT;
	cs->commands_pending = 1;
	FUNC0(DEBUG_CMD, "Scheduling PC_INIT");
}