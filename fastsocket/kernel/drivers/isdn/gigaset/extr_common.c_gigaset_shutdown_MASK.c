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
struct cardstate {int flags; int waiting; int /*<<< orphan*/  mutex; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  at_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CMD ; 
 int /*<<< orphan*/  EV_SHUTDOWN ; 
 int VALID_MINOR ; 
 int /*<<< orphan*/  FUNC0 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cardstate*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

int FUNC7(struct cardstate *cs)
{
	FUNC4(&cs->mutex);

	if (!(cs->flags & VALID_MINOR)) {
		FUNC5(&cs->mutex);
		return -1;
	}

	cs->waiting = 1;

	if (!FUNC2(cs, &cs->at_state, EV_SHUTDOWN, NULL, 0, NULL)) {
		//FIXME what should we do?
		goto exit;
	}

	FUNC1(DEBUG_CMD, "scheduling SHUTDOWN");
	FUNC3(cs);

	FUNC6(cs->waitqueue, !cs->waiting);

	FUNC0(cs);

exit:
	FUNC5(&cs->mutex);
	return 0;
}