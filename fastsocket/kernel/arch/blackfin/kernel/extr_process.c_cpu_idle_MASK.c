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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(void)
{
	/* endless idle loop with no priority at all */
	while (1) {
		void (*idle)(void) = pm_idle;

#ifdef CONFIG_HOTPLUG_CPU
		if (cpu_is_offline(smp_processor_id()))
			cpu_die();
#endif
		if (!idle)
			idle = default_idle;
		FUNC10(1);
		while (!FUNC3())
			idle();
		FUNC9();
		FUNC6();
		FUNC7();
		FUNC5();
	}
}