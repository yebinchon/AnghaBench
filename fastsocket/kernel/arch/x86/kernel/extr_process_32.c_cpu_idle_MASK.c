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
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

void FUNC17(void)
{
	int cpu = FUNC12();

	/*
	 * If we're the non-boot CPU, nothing set the stack canary up
	 * for us.  CPU0 already has it initialized but no harm in
	 * doing it again.  This is a good place for updating it, as
	 * we wont ever return from this function (so the invalid
	 * canaries already on the stack wont ever trigger).
	 */
	FUNC0();

	FUNC3()->status |= TS_POLLING;

	/* endless idle loop with no priority at all */
	while (1) {
		FUNC16(1);
		while (!FUNC5()) {

			FUNC1();
			FUNC10();

			if (FUNC2(cpu))
				FUNC6();

			FUNC4();
			/* Don't trace irqs off for idle */
			FUNC14();
			FUNC7();
			FUNC13();
		}
		FUNC15();
		FUNC9();
		FUNC11();
		FUNC8();
	}
}