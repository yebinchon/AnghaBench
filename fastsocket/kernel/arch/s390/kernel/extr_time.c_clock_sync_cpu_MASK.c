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
struct clock_sync_data {int in_sync; int /*<<< orphan*/  fixup_cc; int /*<<< orphan*/  cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct clock_sync_data *sync)
{
	FUNC1(&sync->cpus);
	FUNC4();
	/*
	 * This looks like a busy wait loop but it isn't. etr_sync_cpus
	 * is called on all other cpus while the TOD clocks is stopped.
	 * __udelay will stop the cpu on an enabled wait psw until the
	 * TOD is running again.
	 */
	while (sync->in_sync == 0) {
		FUNC0(1);
		/*
		 * A different cpu changes *in_sync. Therefore use
		 * barrier() to force memory access.
		 */
		FUNC2();
	}
	if (sync->in_sync != 1)
		/* Didn't work. Clear per-cpu in sync bit again. */
		FUNC3(NULL);
	/*
	 * This round of TOD syncing is done. Set the clock comparator
	 * to the next tick and let the processor continue.
	 */
	FUNC5(sync->fixup_cc);
}