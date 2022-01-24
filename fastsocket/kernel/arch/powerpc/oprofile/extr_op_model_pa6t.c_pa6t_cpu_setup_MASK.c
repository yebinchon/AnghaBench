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
typedef  int u64 ;
struct op_counter_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_PA6T_MMCR0 ; 
 int /*<<< orphan*/  SPRN_PA6T_MMCR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int mmcr0_val ; 
 int mmcr1_val ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct op_counter_config *ctr)
{
	u64 mmcr0 = mmcr0_val;
	u64 mmcr1 = mmcr1_val;

	/* Default is all PMCs off */
	mmcr0 &= ~(0x3FUL);
	FUNC1(SPRN_PA6T_MMCR0, mmcr0);

	/* program selected programmable events in */
	FUNC1(SPRN_PA6T_MMCR1, mmcr1);

	FUNC2("setup on cpu %d, mmcr0 %016lx\n", FUNC3(),
		FUNC0(SPRN_PA6T_MMCR0));
	FUNC2("setup on cpu %d, mmcr1 %016lx\n", FUNC3(),
		FUNC0(SPRN_PA6T_MMCR1));

	return 0;
}