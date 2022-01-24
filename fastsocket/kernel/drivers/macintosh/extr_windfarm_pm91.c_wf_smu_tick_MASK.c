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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FAILURE_OVERTEMP ; 
 scalar_t__ cpufreq_clamp ; 
 scalar_t__ fan_cpu_main ; 
 scalar_t__ fan_cpu_second ; 
 scalar_t__ fan_cpu_third ; 
 scalar_t__ fan_hd ; 
 scalar_t__ fan_slots ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ wf_smu_cpu_fans ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ wf_smu_drive_fans ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 unsigned int wf_smu_failure_state ; 
 int wf_smu_readjust ; 
 int wf_smu_skipping ; 
 scalar_t__ wf_smu_slots_fans ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int wf_smu_started ; 

__attribute__((used)) static void FUNC11(void)
{
	unsigned int last_failure = wf_smu_failure_state;
	unsigned int new_failure;

	if (!wf_smu_started) {
		FUNC0("wf: creating control loops !\n");
		FUNC7();
		FUNC8();
		FUNC6();
		wf_smu_started = 1;
	}

	/* Skipping ticks */
	if (wf_smu_skipping && --wf_smu_skipping)
		return;

	wf_smu_failure_state = 0;
	if (wf_smu_drive_fans)
		FUNC9(wf_smu_drive_fans);
	if (wf_smu_slots_fans)
		FUNC10(wf_smu_slots_fans);
	if (wf_smu_cpu_fans)
		FUNC5(wf_smu_cpu_fans);

	wf_smu_readjust = 0;
	new_failure = wf_smu_failure_state & ~last_failure;

	/* If entering failure mode, clamp cpufreq and ramp all
	 * fans to full speed.
	 */
	if (wf_smu_failure_state && !last_failure) {
		if (cpufreq_clamp)
			FUNC2(cpufreq_clamp);
		if (fan_cpu_main)
			FUNC2(fan_cpu_main);
		if (fan_cpu_second)
			FUNC2(fan_cpu_second);
		if (fan_cpu_third)
			FUNC2(fan_cpu_third);
		if (fan_hd)
			FUNC2(fan_hd);
		if (fan_slots)
			FUNC2(fan_slots);
	}

	/* If leaving failure mode, unclamp cpufreq and readjust
	 * all fans on next iteration
	 */
	if (!wf_smu_failure_state && last_failure) {
		if (cpufreq_clamp)
			FUNC3(cpufreq_clamp);
		wf_smu_readjust = 1;
	}

	/* Overtemp condition detected, notify and start skipping a couple
	 * ticks to let the temperature go down
	 */
	if (new_failure & FAILURE_OVERTEMP) {
		FUNC4();
		wf_smu_skipping = 2;
	}

	/* We only clear the overtemp condition if overtemp is cleared
	 * _and_ no other failure is present. Since a sensor error will
	 * clear the overtemp condition (can't measure temperature) at
	 * the control loop levels, but we don't want to keep it clear
	 * here in this case
	 */
	if (new_failure == 0 && last_failure & FAILURE_OVERTEMP)
		FUNC1();
}