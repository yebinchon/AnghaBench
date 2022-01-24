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
struct cardstate {int commands_pending; int /*<<< orphan*/  lock; } ;
struct bc_state {int /*<<< orphan*/  chstate; } ;
struct at_state_t {unsigned int seq_index; int /*<<< orphan*/  pending_commands; struct cardstate* cs; struct bc_state* bcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHS_NOTIFY_LL ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int /*<<< orphan*/  PC_CID ; 
 int /*<<< orphan*/  PC_NOCID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct at_state_t*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct at_state_t *at_state, void *data, unsigned seq_index)
{
	struct bc_state *bcs = at_state->bcs;
	struct cardstate *cs = at_state->cs;
	int retval;
	unsigned long flags;

	bcs->chstate |= CHS_NOTIFY_LL;

	FUNC2(&cs->lock, flags);
	if (at_state->seq_index != seq_index) {
		FUNC3(&cs->lock, flags);
		goto error;
	}
	FUNC3(&cs->lock, flags);

	retval = FUNC1(at_state, data);
	if (retval != 0)
		goto error;


	at_state->pending_commands |= PC_CID;
	FUNC0(DEBUG_CMD, "Scheduling PC_CID");
	cs->commands_pending = 1;
	return;

error:
	at_state->pending_commands |= PC_NOCID;
	FUNC0(DEBUG_CMD, "Scheduling PC_NOCID");
	cs->commands_pending = 1;
	return;
}