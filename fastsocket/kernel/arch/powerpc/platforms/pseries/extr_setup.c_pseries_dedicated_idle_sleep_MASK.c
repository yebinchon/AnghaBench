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
struct TYPE_2__ {int idle; int donate_dedicated_cpu; unsigned long wait_state_cycles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SPRN_PURR ; 
 int /*<<< orphan*/  TIF_POLLING_NRFLAG ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 TYPE_1__* FUNC7 () ; 
 unsigned long FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 unsigned int FUNC16 () ; 
 int /*<<< orphan*/  smt_snooze_delay ; 
 unsigned long tb_ticks_per_usec ; 

__attribute__((used)) static void FUNC17(void)
{ 
	unsigned int cpu = FUNC16();
	unsigned long start_snooze;
	unsigned long in_purr, out_purr;

	/*
	 * Indicate to the HV that we are idle. Now would be
	 * a good time to find other work to dispatch.
	 */
	FUNC7()->idle = 1;
	FUNC7()->donate_dedicated_cpu = 1;
	in_purr = FUNC11(SPRN_PURR);

	/*
	 * We come in with interrupts disabled, and need_resched()
	 * has been checked recently.  If we should poll for a little
	 * while, do so.
	 */
	if (FUNC3(smt_snooze_delay)) {
		start_snooze = FUNC8() +
			FUNC3(smt_snooze_delay) * tb_ticks_per_usec;
		FUNC10();
		FUNC14(TIF_POLLING_NRFLAG);

		while (FUNC8() < start_snooze) {
			if (FUNC12() || FUNC6(cpu))
				goto out;
			FUNC13();
			FUNC0();
			FUNC2();
		}

		FUNC1();
		FUNC5(TIF_POLLING_NRFLAG);
		FUNC15();
		FUNC9();
		if (FUNC12() || FUNC6(cpu))
			goto out;
	}

	FUNC4();

out:
	FUNC1();
	out_purr = FUNC11(SPRN_PURR);
	FUNC7()->wait_state_cycles += out_purr - in_purr;
	FUNC7()->donate_dedicated_cpu = 0;
	FUNC7()->idle = 0;
}