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
struct op_counter_config {int /*<<< orphan*/  event; scalar_t__ enabled; } ;

/* Variables and functions */
 unsigned int MMCR0_FC ; 
 int MSR_PMM ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int num_counters ; 
 int /*<<< orphan*/ * reset_value ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct op_counter_config *ctr)
{
	int i;
	unsigned int mmcr0;

	/* set the PMM bit (see comment below) */
	FUNC5(FUNC3() | MSR_PMM);

	for (i = 0; i < num_counters; ++i) {
		if (ctr[i].enabled) {
			FUNC0(i, reset_value[i]);
			FUNC1(i, ctr[i].event);
		} else {
			FUNC0(i, 0);
		}
	}

	mmcr0 = FUNC4(SPRN_MMCR0);

	/*
	 * now clear the freeze bit, counting will not start until we
	 * rfid from this excetion, because only at that point will
	 * the PMM bit be cleared
	 */
	mmcr0 &= ~MMCR0_FC;
	FUNC6(SPRN_MMCR0, mmcr0);

	FUNC2("start on cpu %d, mmcr0 %x\n", FUNC7(), mmcr0);
	return 0;
}