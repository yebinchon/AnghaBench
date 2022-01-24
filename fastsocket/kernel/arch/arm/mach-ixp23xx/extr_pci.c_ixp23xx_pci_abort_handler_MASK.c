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
struct pt_regs {int ARM_pc; } ;

/* Variables and functions */
 unsigned long volatile* IXP23XX_PCI_CMDSTAT ; 
 unsigned long volatile* IXP23XX_PCI_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int pci_master_aborts ; 

int FUNC2(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
	volatile unsigned long temp;
	unsigned long flags;

	pci_master_aborts = 1;

	FUNC1(flags);
	temp = *IXP23XX_PCI_CONTROL;

	/*
	 * master abort and cmd tgt err
	 */
	if (temp & ((1 << 8) | (1 << 5)))
		*IXP23XX_PCI_CONTROL = temp;

	temp = *IXP23XX_PCI_CMDSTAT;

	if (temp & (1 << 29))
		*IXP23XX_PCI_CMDSTAT = temp;
	FUNC0(flags);

	/*
	 * If it was an imprecise abort, then we need to correct the
	 * return address to be _after_ the instruction.
	 */
	if (fsr & (1 << 10))
		regs->ARM_pc += 4;

	return 0;
}