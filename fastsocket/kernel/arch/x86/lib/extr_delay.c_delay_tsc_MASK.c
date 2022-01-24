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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(unsigned long loops)
{
	unsigned long bclock, now;
	int cpu;

	FUNC0();
	cpu = FUNC5();
	FUNC2();
	FUNC3(bclock);
	for (;;) {
		FUNC2();
		FUNC3(now);
		if ((now - bclock) >= loops)
			break;

		/* Allow RT tasks to run */
		FUNC1();
		FUNC4();
		FUNC0();

		/*
		 * It is possible that we moved to another CPU, and
		 * since TSC's are per-cpu we need to calculate
		 * that. The delay must guarantee that we wait "at
		 * least" the amount of time. Being moved to another
		 * CPU could make the wait longer but we just need to
		 * make sure we waited long enough. Rebalance the
		 * counter for this CPU.
		 */
		if (FUNC6(cpu != FUNC5())) {
			loops -= (now - bclock);
			cpu = FUNC5();
			FUNC2();
			FUNC3(bclock);
		}
	}
	FUNC1();
}