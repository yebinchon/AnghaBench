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
 int /*<<< orphan*/  TIF_POLLING_NRFLAG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(void)
{
	int cpu = FUNC7();

	FUNC6(TIF_POLLING_NRFLAG);

	while(1) {
		FUNC10(1);

		while (!FUNC2() && !FUNC0(cpu))
			FUNC8(cpu);

		FUNC9();

		FUNC4();

#ifdef CONFIG_HOTPLUG_CPU
		if (cpu_is_offline(cpu))
			cpu_play_dead();
#endif

		FUNC5();
		FUNC3();
	}
}