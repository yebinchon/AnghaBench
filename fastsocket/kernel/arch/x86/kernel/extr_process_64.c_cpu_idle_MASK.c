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
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_POLLING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
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
 int /*<<< orphan*/  FUNC17 (int) ; 

void FUNC18(void)
{
	FUNC3()->status |= TS_POLLING;

	/*
	 * If we're the non-boot CPU, nothing set the stack canary up
	 * for us.  CPU0 already has it initialized but no harm in
	 * doing it again.  This is a good place for updating it, as
	 * we wont ever return from this function (so the invalid
	 * canaries already on the stack wont ever trigger).
	 */
	FUNC1();

	/* endless idle loop with no priority at all */
	while (1) {
		FUNC17(1);
		while (!FUNC6()) {

			FUNC11();

			if (FUNC2(FUNC13()))
				FUNC7();
			/*
			 * Idle routines should keep interrupts disabled
			 * from here on, until they go to idle.
			 * Otherwise, idle callbacks can misfire.
			 */
			FUNC5();
			FUNC4();
			/* Don't trace irqs off for idle */
			FUNC15();
			FUNC8();
			FUNC14();
			/* In many cases the interrupt that ended idle
			   has already called exit_idle. But some idle
			   loops can be woken up without interrupt. */
			FUNC0();
		}

		FUNC16();
		FUNC10();
		FUNC12();
		FUNC9();
	}
}