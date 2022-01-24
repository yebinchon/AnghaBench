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
struct pt_regs {int dummy; } ;
struct op_counter_config {scalar_t__ enabled; } ;

/* Variables and functions */
 unsigned int MMCR0_FC ; 
 unsigned int MMCR0_PMXE ; 
 int MSR_PMM ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_SIAR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int num_counters ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,struct pt_regs*,int,int) ; 
 int /*<<< orphan*/ * reset_value ; 

__attribute__((used)) static void FUNC8(struct pt_regs *regs,
				  struct op_counter_config *ctr)
{
	unsigned int mmcr0;
	int is_kernel;
	int val;
	int i;
	unsigned long pc = FUNC4(SPRN_SIAR);

	is_kernel = FUNC2(pc);

	/* set the PMM bit (see comment below) */
	FUNC5(FUNC3() | MSR_PMM);

	for (i = 0; i < num_counters; ++i) {
		val = FUNC0(i);
		if (val < 0) {
			if (ctr[i].enabled) {
				FUNC7(pc, regs, i, is_kernel);
				FUNC1(i, reset_value[i]);
			} else {
				FUNC1(i, 0);
			}
		}
	}

	mmcr0 = FUNC4(SPRN_MMCR0);

	/* reset the perfmon trigger */
	mmcr0 |= MMCR0_PMXE;

	/*
	 * now clear the freeze bit, counting will not start until we
	 * rfid from this exception, because only at that point will
	 * the PMM bit be cleared
	 */
	mmcr0 &= ~MMCR0_FC;
	FUNC6(SPRN_MMCR0, mmcr0);
}