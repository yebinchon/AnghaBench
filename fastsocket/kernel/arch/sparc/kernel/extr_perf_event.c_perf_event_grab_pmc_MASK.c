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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  active_events ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nmi_active ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  perf_stop_nmi_watchdog ; 
 int /*<<< orphan*/  pmc_grab_mutex ; 

void FUNC7(void)
{
	if (FUNC2(&active_events))
		return;

	FUNC4(&pmc_grab_mutex);
	if (FUNC3(&active_events) == 0) {
		if (FUNC3(&nmi_active) > 0) {
			FUNC6(perf_stop_nmi_watchdog, NULL, 1);
			FUNC0(FUNC3(&nmi_active) != 0);
		}
		FUNC1(&active_events);
	}
	FUNC5(&pmc_grab_mutex);
}