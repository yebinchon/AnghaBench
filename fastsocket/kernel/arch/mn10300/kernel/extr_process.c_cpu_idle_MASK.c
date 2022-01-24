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
struct TYPE_2__ {int /*<<< orphan*/  idle_timestamp; } ;

/* Variables and functions */
 void FUNC0 () ; 
 TYPE_1__* irq_stat ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	int cpu = FUNC6();

	/* endless idle loop with no priority at all */
	for (;;) {
		while (!FUNC1()) {
			void (*idle)(void);

			FUNC7();
			idle = pm_idle;
			if (!idle)
				idle = default_idle;

			irq_stat[cpu].idle_timestamp = jiffies;
			idle();
		}

		FUNC4();
		FUNC5();
		FUNC3();
	}
}