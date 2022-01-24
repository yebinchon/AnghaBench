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
 scalar_t__ can_do_pal_halt ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 void FUNC3 () ; 
 void FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 void FUNC16 (int) ; 
 void FUNC17 () ; 
 void FUNC18 (int) ; 

void __attribute__((noreturn))
FUNC19 (void)
{
	void (*mark_idle)(int) = ia64_mark_idle;
  	int cpu = FUNC15();

	/* endless idle loop with no priority at all */
	while (1) {
		if (can_do_pal_halt) {
			FUNC2()->status &= ~TS_POLLING;
			/*
			 * TS_POLLING-cleared state must be visible before we
			 * test NEED_RESCHED:
			 */
			FUNC14();
		} else {
			FUNC2()->status |= TS_POLLING;
		}

		if (!FUNC6()) {
			void (*idle)(void);
#ifdef CONFIG_SMP
			min_xtp();
#endif
			FUNC12();
			if (mark_idle)
				(*mark_idle)(1);

			idle = pm_idle;
			if (!idle)
				idle = default_idle;
			(*idle)();
			if (mark_idle)
				(*mark_idle)(0);
#ifdef CONFIG_SMP
			normal_xtp();
#endif
		}
		FUNC11();
		FUNC13();
		FUNC10();
		FUNC0();
		if (FUNC1(cpu))
			FUNC8();
	}
}