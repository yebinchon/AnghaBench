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
 unsigned long long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void)
{
	unsigned long long nsecs;

	while (1) {
		/* endless idle loop with no priority at all */

		/*
		 * although we are an idle CPU, we do not want to
		 * get into the scheduler unnecessarily.
		 */
		if (FUNC2())
			FUNC3();

		FUNC5(1);
		nsecs = FUNC0();
		FUNC1(nsecs);
		FUNC4();
	}
}