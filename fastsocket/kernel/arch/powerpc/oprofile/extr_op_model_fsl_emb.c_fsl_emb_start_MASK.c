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
 int /*<<< orphan*/  PMRN_PMGC0 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int num_counters ; 
 int oprofile_running ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * reset_value ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct op_counter_config *ctr)
{
	int i;

	FUNC3(FUNC1() | MSR_PMM);

	for (i = 0; i < num_counters; ++i) {
		if (ctr[i].enabled) {
			FUNC0(i, reset_value[i]);
			/* Set each enabled counter to only
			 * count when the Mark bit is *not* set */
			FUNC7(i, 1, 0);
			FUNC4(i, 1);
		} else {
			FUNC0(i, 0);

			/* Set the ctr to be stopped */
			FUNC4(i, 0);
		}
	}

	/* Clear the freeze bit, and enable the interrupt.
	 * The counters won't actually start until the rfi clears
	 * the PMM bit */
	FUNC5(1);

	oprofile_running = 1;

	FUNC6("start on cpu %d, pmgc0 %x\n", FUNC8(),
			FUNC2(PMRN_PMGC0));

	return 0;
}