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
struct pt_regs {int cp0_cause; int /*<<< orphan*/  cp0_epc; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int MIPS_BE_FIXUP ; 
 int /*<<< orphan*/  PI_CPU_NUM ; 
 int /*<<< orphan*/  PI_ERR_INT_PEND ; 
 int /*<<< orphan*/  PI_ERR_STATUS0_A ; 
 int /*<<< orphan*/  PI_ERR_STATUS0_B ; 
 int /*<<< orphan*/  PI_ERR_STATUS1_A ; 
 int /*<<< orphan*/  PI_ERR_STATUS1_B ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 

int FUNC6(struct pt_regs *regs, int is_fixup)
{
	unsigned long errst0, errst1;
	int data = regs->cp0_cause & 4;
	int cpu = FUNC0(PI_CPU_NUM);

	if (is_fixup)
		return MIPS_BE_FIXUP;

	FUNC4("Slice %c got %cbe at 0x%lx\n", 'A' + cpu, data ? 'd' : 'i',
	       regs->cp0_epc);
	FUNC4("Hub information:\n");
	FUNC4("ERR_INT_PEND = 0x%06llx\n", FUNC0(PI_ERR_INT_PEND));
	errst0 = FUNC0(cpu ? PI_ERR_STATUS0_B : PI_ERR_STATUS0_A);
	errst1 = FUNC0(cpu ? PI_ERR_STATUS1_B : PI_ERR_STATUS1_A);
	FUNC1(errst0, errst1);
	FUNC5(regs);
	FUNC2();
	while(1);
	FUNC3(SIGBUS, current);
}