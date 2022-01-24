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
struct vcpu_runstate_info {size_t state; unsigned long long state_entry_time; unsigned long long* time; } ;

/* Variables and functions */
 size_t RUNSTATE_blocked ; 
 size_t RUNSTATE_running ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_runstate_info*) ; 
 unsigned long long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static unsigned long long FUNC5(void)
{
	struct vcpu_runstate_info runstate;

	unsigned long long now;
	unsigned long long offset;
	unsigned long long ret;

	/*
	 * Ideally sched_clock should be called on a per-cpu basis
	 * anyway, so preempt should already be disabled, but that's
	 * not current practice at the moment.
	 */
	FUNC3();

	/*
	 * both ia64_native_sched_clock() and xen's runstate are
	 * based on mAR.ITC. So difference of them makes sense.
	 */
	now = FUNC2();

	FUNC1(&runstate);

	FUNC0(runstate.state != RUNSTATE_running);

	offset = 0;
	if (now > runstate.state_entry_time)
		offset = now - runstate.state_entry_time;
	ret = runstate.time[RUNSTATE_blocked] +
		runstate.time[RUNSTATE_running] +
		offset;

	FUNC4();

	return ret;
}