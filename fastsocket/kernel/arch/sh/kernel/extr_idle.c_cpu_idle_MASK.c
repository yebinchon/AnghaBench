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
 int /*<<< orphan*/  FUNC0 () ; 
 void FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(void)
{
	FUNC7(TIF_POLLING_NRFLAG);

	/* endless idle loop with no priority at all */
	while (1) {
		void (*idle)(void) = pm_idle;

		if (!idle)
			idle = default_idle;

		FUNC9(1);
		while (!FUNC2())
			idle();
		FUNC8();

		FUNC5();
		FUNC6();
		FUNC4();
		FUNC0();
	}
}