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
struct intel_dp {int want_panel_vdd; int panel_power_cycle_delay; int /*<<< orphan*/  panel_vdd_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct intel_dp *intel_dp, bool sync)
{
	if (!FUNC3(intel_dp))
		return;

	FUNC0("Turn eDP VDD off %d\n", intel_dp->want_panel_vdd);
	FUNC1(!intel_dp->want_panel_vdd, "eDP VDD not forced on");

	intel_dp->want_panel_vdd = false;

	if (sync) {
		FUNC2(intel_dp);
	} else {
		/*
		 * Queue the timer to fire a long
		 * time from now (relative to the power down delay)
		 * to keep the panel power up across a sequence of operations
		 */
		FUNC5(&intel_dp->panel_vdd_work,
				      FUNC4(intel_dp->panel_power_cycle_delay * 5));
	}
}