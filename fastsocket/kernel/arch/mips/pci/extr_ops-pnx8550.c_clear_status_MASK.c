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

/* Variables and functions */
 int PCI_BASE ; 
 int PCI_GPPM_ICLR ; 
 int PCI_GPPM_STATUS ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 

__attribute__((used)) static inline void FUNC2(void)
{
	unsigned long pci_stat;

	pci_stat = FUNC0(PCI_BASE | PCI_GPPM_STATUS);
	FUNC1(pci_stat, PCI_BASE | PCI_GPPM_ICLR);
}