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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int ARM_pc; } ;

/* Variables and functions */
 int /*<<< orphan*/ * PCI_ISR ; 
 int /*<<< orphan*/  PCI_ISR_PFE ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int /*<<< orphan*/  PCI_STATUS_REC_MASTER_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
	u32 isr, status;

	isr = *PCI_ISR;
	FUNC0(PCI_STATUS, 2, &status);
	FUNC2("PCI: abort_handler addr = %#lx, isr = %#x, "
		"status = %#x\n", addr, isr, status);

	/* make sure the Master Abort bit is reset */    
	*PCI_ISR = PCI_ISR_PFE;
	status |= PCI_STATUS_REC_MASTER_ABORT;
	FUNC1(PCI_STATUS, 2, status);

	/*
	 * If it was an imprecise abort, then we need to correct the
	 * return address to be _after_ the instruction.
	 */
	if (fsr & (1 << 10))
		regs->ARM_pc += 4;

	return 0;
}