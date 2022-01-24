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
typedef  int u32 ;
struct pt_regs {int ARM_pc; } ;

/* Variables and functions */
 int* IXP2000_PCI_CMDSTAT ; 
 int* IXP2000_PCI_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int*,int volatile) ; 
 int /*<<< orphan*/  FUNC1 (int*,int volatile) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int pci_master_aborts ; 

int FUNC4(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{

	volatile u32 temp;
	unsigned long flags;

	pci_master_aborts = 1;

	FUNC3(flags);
	temp = *(IXP2000_PCI_CONTROL);
	if (temp & ((1 << 8) | (1 << 5))) {
		FUNC0(IXP2000_PCI_CONTROL, temp);
	}

	temp = *(IXP2000_PCI_CMDSTAT);
	if (temp & (1 << 29)) {
		while (temp & (1 << 29)) {	
			FUNC1(IXP2000_PCI_CMDSTAT, temp);
			temp = *(IXP2000_PCI_CMDSTAT);
		}
	}
	FUNC2(flags);

	/*
	 * If it was an imprecise abort, then we need to correct the
	 * return address to be _after_ the instruction.
	 */
	if (fsr & (1 << 10))
		regs->ARM_pc += 4;

	return 0;
}