#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int s32 ;
struct TYPE_5__ {int history_len; } ;
struct TYPE_6__ {TYPE_1__ param; scalar_t__* powers; } ;
struct TYPE_7__ {TYPE_2__ pid; } ;

/* Variables and functions */
 size_t CPUFREQ ; 
 unsigned int FAILURE_OVERTEMP ; 
 int N_CONTROLS ; 
 int N_LOOPS ; 
 int average_power ; 
 scalar_t__* controls ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* pm121_cpu_state ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int pm121_failure_state ; 
 int pm121_readjust ; 
 int pm121_skipping ; 
 int pm121_started ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__* pm121_sys_state ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void)
{
	unsigned int last_failure = pm121_failure_state;
	unsigned int new_failure;
	s32 total_power;
	int i;

	if (!pm121_started) {
		FUNC4("pm121: creating control loops !\n");
		for (i = 0; i < N_LOOPS; i++)
			FUNC2(i);

		FUNC1();
		pm121_started = 1;
	}

	/* skipping ticks */
	if (pm121_skipping && --pm121_skipping)
		return;

	/* compute average power */
	total_power = 0;
	for (i = 0; i < pm121_cpu_state->pid.param.history_len; i++)
		total_power += pm121_cpu_state->pid.powers[i];

	average_power = total_power / pm121_cpu_state->pid.param.history_len;


	pm121_failure_state = 0;
	for (i = 0 ; i < N_LOOPS; i++) {
		if (pm121_sys_state[i])
			FUNC3(i);
	}

	if (pm121_cpu_state)
		FUNC0(pm121_cpu_state);

	pm121_readjust = 0;
	new_failure = pm121_failure_state & ~last_failure;

	/* If entering failure mode, clamp cpufreq and ramp all
	 * fans to full speed.
	 */
	if (pm121_failure_state && !last_failure) {
		for (i = 0; i < N_CONTROLS; i++) {
			if (controls[i])
				FUNC6(controls[i]);
		}
	}

	/* If leaving failure mode, unclamp cpufreq and readjust
	 * all fans on next iteration
	 */
	if (!pm121_failure_state && last_failure) {
		if (controls[CPUFREQ])
			FUNC7(controls[CPUFREQ]);
		pm121_readjust = 1;
	}

	/* Overtemp condition detected, notify and start skipping a couple
	 * ticks to let the temperature go down
	 */
	if (new_failure & FAILURE_OVERTEMP) {
		FUNC8();
		pm121_skipping = 2;
	}

	/* We only clear the overtemp condition if overtemp is cleared
	 * _and_ no other failure is present. Since a sensor error will
	 * clear the overtemp condition (can't measure temperature) at
	 * the control loop levels, but we don't want to keep it clear
	 * here in this case
	 */
	if (new_failure == 0 && last_failure & FAILURE_OVERTEMP)
		FUNC5();
}