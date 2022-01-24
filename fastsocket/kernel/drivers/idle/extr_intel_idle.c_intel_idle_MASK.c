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
struct cpuidle_state {int dummy; } ;
struct cpuidle_device {int dummy; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_EVT_NOTIFY_BROADCAST_ENTER ; 
 int /*<<< orphan*/  CLOCK_EVT_NOTIFY_BROADCAST_EXIT ; 
 unsigned long MWAIT_CSTATE_MASK ; 
 unsigned long MWAIT_SUBSTATE_SIZE ; 
 int /*<<< orphan*/  POWER_CSTATE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct cpuidle_state*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int lapic_timer_reliable_states ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long,int) ; 

__attribute__((used)) static int FUNC16(struct cpuidle_device *dev, struct cpuidle_state *state)
{
	unsigned long ecx = 1; /* break on interrupt flag */
	unsigned long eax = (unsigned long)FUNC3(state);
	unsigned int cstate;
	ktime_t kt_before, kt_after;
	s64 usec_delta;
	int cpu = FUNC12();

	cstate = (((eax) >> MWAIT_SUBSTATE_SIZE) & MWAIT_CSTATE_MASK) + 1;

	FUNC8();

	if (!(lapic_timer_reliable_states & (1 << (cstate))))
		FUNC2(CLOCK_EVT_NOTIFY_BROADCAST_ENTER, &cpu);

	kt_before = FUNC5();

	FUNC14();
#ifndef MODULE
	FUNC15(POWER_CSTATE, (eax >> 4) + 1, cpu);
#endif
	if (!FUNC10()) {

		FUNC0((void *)&FUNC4()->flags, 0, 0);
		FUNC11();
		if (!FUNC10())
			FUNC1(eax, ecx);
	}

	FUNC13();

	kt_after = FUNC5();
	usec_delta = FUNC7(FUNC6(kt_after, kt_before));

	FUNC9();

	if (!(lapic_timer_reliable_states & (1 << (cstate))))
		FUNC2(CLOCK_EVT_NOTIFY_BROADCAST_EXIT, &cpu);

	return usec_delta;
}