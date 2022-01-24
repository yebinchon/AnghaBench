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
struct op_counter_config {scalar_t__ enabled; } ;

/* Variables and functions */
 int MSR_PMM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int num_pmcs ; 
 int oprofile_running ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * reset_value ; 

__attribute__((used)) static int FUNC4(struct op_counter_config *ctr)
{
	int i;

	FUNC2(FUNC1() | MSR_PMM);

	for (i = 0; i < num_pmcs; ++i) {
		if (ctr[i].enabled)
			FUNC0(i, reset_value[i]);
		else
			FUNC0(i, 0);
	}

	/* Clear the freeze bit, and enable the interrupt.
	 * The counters won't actually start until the rfi clears
	 * the PMM bit */
	FUNC3();

	oprofile_running = 1;

	return 0;
}