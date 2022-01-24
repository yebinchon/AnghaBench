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
 unsigned int MMCR0_FC ; 
 unsigned int MMCR0_FCECE ; 
 unsigned int MMCR0_FCM1 ; 
 unsigned int MMCR0_PMC1CE ; 
 unsigned int MMCR0_PMCjCE ; 
 unsigned int MMCR0_PMXE ; 
 unsigned long MMCRA_SAMPLE_ENABLE ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_MMCR1 ; 
 int /*<<< orphan*/  SPRN_MMCRA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int mmcr0_val ; 
 unsigned long mmcr1_val ; 
 scalar_t__ FUNC2 () ; 
 unsigned long mmcra_val ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct op_counter_config *ctr)
{
	unsigned int mmcr0 = mmcr0_val;
	unsigned long mmcra = mmcra_val;

	FUNC4();

	/* set the freeze bit */
	mmcr0 |= MMCR0_FC;
	FUNC3(SPRN_MMCR0, mmcr0);

	mmcr0 |= MMCR0_FCM1|MMCR0_PMXE|MMCR0_FCECE;
	mmcr0 |= MMCR0_PMC1CE|MMCR0_PMCjCE;
	FUNC3(SPRN_MMCR0, mmcr0);

	FUNC3(SPRN_MMCR1, mmcr1_val);

	if (FUNC2())
		mmcra |= MMCRA_SAMPLE_ENABLE;
	FUNC3(SPRN_MMCRA, mmcra);

	FUNC0("setup on cpu %d, mmcr0 %lx\n", FUNC5(),
	    FUNC1(SPRN_MMCR0));
	FUNC0("setup on cpu %d, mmcr1 %lx\n", FUNC5(),
	    FUNC1(SPRN_MMCR1));
	FUNC0("setup on cpu %d, mmcra %lx\n", FUNC5(),
	    FUNC1(SPRN_MMCRA));

	return 0;
}