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
struct op_counter_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_MMCRA ; 
 unsigned int MMCR0_FC ; 
 unsigned int MMCR0_FCECE ; 
 unsigned int MMCR0_FCM1 ; 
 unsigned int MMCR0_PMC1CE ; 
 unsigned int MMCR0_PMCjCE ; 
 unsigned int MMCR0_PMXE ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_MMCR1 ; 
 int /*<<< orphan*/  SPRN_MMCRA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct op_counter_config *ctr)
{
	unsigned int mmcr0;

	/* reset MMCR0 and set the freeze bit */
	mmcr0 = MMCR0_FC;
	FUNC3(SPRN_MMCR0, mmcr0);

	/* reset MMCR1, MMCRA */
	FUNC3(SPRN_MMCR1, 0);

	if (FUNC0(CPU_FTR_MMCRA))
		FUNC3(SPRN_MMCRA, 0);

	mmcr0 |= MMCR0_FCM1|MMCR0_PMXE|MMCR0_FCECE;
	/* Only applies to POWER3, but should be safe on RS64 */
	mmcr0 |= MMCR0_PMC1CE|MMCR0_PMCjCE;
	FUNC3(SPRN_MMCR0, mmcr0);

	FUNC1("setup on cpu %d, mmcr0 %lx\n", FUNC4(),
	    FUNC2(SPRN_MMCR0));
	FUNC1("setup on cpu %d, mmcr1 %lx\n", FUNC4(),
	    FUNC2(SPRN_MMCR1));

	return 0;
}