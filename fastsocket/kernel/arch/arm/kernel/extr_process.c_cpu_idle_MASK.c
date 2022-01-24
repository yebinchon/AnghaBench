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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ hlt_counter ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  led_idle_end ; 
 int /*<<< orphan*/  led_idle_start ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

void FUNC19(void)
{
	FUNC6();

	/* endless idle loop with no priority at all */
	while (1) {
		FUNC18(1);
		FUNC5(led_idle_start);
		while (!FUNC9()) {
#ifdef CONFIG_HOTPLUG_CPU
			if (cpu_is_offline(smp_processor_id()))
				cpu_die();
#endif

			FUNC7();
			if (hlt_counter) {
				FUNC8();
				FUNC3();
			} else {
				FUNC16();
				FUNC10();
				FUNC15();
				/*
				 * This will eventually be removed - pm_idle
				 * functions should always return with IRQs
				 * enabled.
				 */
				FUNC0(FUNC4());
				FUNC8();
			}
		}
		FUNC5(led_idle_end);
		FUNC17();
		FUNC12();
		FUNC13();
		FUNC11();
	}
}