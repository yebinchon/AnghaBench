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
 int /*<<< orphan*/  SIGIO ; 
 int SIGIO_MASK ; 
 int SIGVTALRM_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int signals_enabled ; 
 int signals_pending ; 

void FUNC3(void)
{
	int save_pending;

	if (signals_enabled == 1)
		return;

	/*
	 * We loop because the IRQ handler returns with interrupts off.  So,
	 * interrupts may have arrived and we need to re-enable them and
	 * recheck signals_pending.
	 */
	while (1) {
		/*
		 * Save and reset save_pending after enabling signals.  This
		 * way, signals_pending won't be changed while we're reading it.
		 */
		signals_enabled = 1;

		/*
		 * Setting signals_enabled and reading signals_pending must
		 * happen in this order.
		 */
		FUNC0();

		save_pending = signals_pending;
		if (save_pending == 0)
			return;

		signals_pending = 0;

		/*
		 * We have pending interrupts, so disable signals, as the
		 * handlers expect them off when they are called.  They will
		 * be enabled again above.
		 */

		signals_enabled = 0;

		/*
		 * Deal with SIGIO first because the alarm handler might
		 * schedule, leaving the pending SIGIO stranded until we come
		 * back here.
		 */
		if (save_pending & SIGIO_MASK)
			FUNC2(SIGIO, NULL);

		if (save_pending & SIGVTALRM_MASK)
			FUNC1(NULL);
	}
}