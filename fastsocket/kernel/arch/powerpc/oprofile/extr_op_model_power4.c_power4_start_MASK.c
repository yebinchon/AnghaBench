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
struct op_counter_config {scalar_t__ enabled; } ;
struct TYPE_2__ {int num_pmcs; } ;

/* Variables and functions */
 unsigned int MMCR0_FC ; 
 unsigned int MMCR0_PMAO ; 
 int MSR_PMM ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* cur_cpu_spec ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 () ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int oprofile_running ; 
 int /*<<< orphan*/ * reset_value ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct op_counter_config *ctr)
{
	int i;
	unsigned int mmcr0;

	/* set the PMM bit (see comment below) */
	FUNC4(FUNC2() | MSR_PMM);

	for (i = 0; i < cur_cpu_spec->num_pmcs; ++i) {
		if (ctr[i].enabled) {
			FUNC0(i, reset_value[i]);
		} else {
			FUNC0(i, 0);
		}
	}

	mmcr0 = FUNC3(SPRN_MMCR0);

	/*
	 * We must clear the PMAO bit on some (GQ) chips. Just do it
	 * all the time
	 */
	mmcr0 &= ~MMCR0_PMAO;

	/*
	 * now clear the freeze bit, counting will not start until we
	 * rfid from this excetion, because only at that point will
	 * the PMM bit be cleared
	 */
	mmcr0 &= ~MMCR0_FC;
	FUNC5(SPRN_MMCR0, mmcr0);

	oprofile_running = 1;

	FUNC1("start on cpu %d, mmcr0 %x\n", FUNC6(), mmcr0);
	return 0;
}