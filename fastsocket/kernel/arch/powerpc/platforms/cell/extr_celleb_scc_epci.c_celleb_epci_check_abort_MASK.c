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
struct pci_controller {int dummy; } ;
typedef  scalar_t__ PCI_IO_ADDR ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 scalar_t__ PCI_COMMAND ; 
 int PCI_STATUS_REC_MASTER_ABORT ; 
 int SCC_EPCI_INT_PAI ; 
 scalar_t__ SCC_EPCI_STATUS ; 
 scalar_t__ SCC_EPCI_VCSR ; 
 int SCC_EPCI_VCSR_FRE ; 
 scalar_t__ SCC_EPCI_VISTAT ; 
 int SCC_EPCI_VISTAT_PMFE ; 
 scalar_t__ FUNC0 (struct pci_controller*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct pci_controller *hose,
				   PCI_IO_ADDR addr)
{
	PCI_IO_ADDR reg;
	PCI_IO_ADDR epci_base;
	u32 val;

	FUNC2();
	epci_base = FUNC0(hose);

	reg = epci_base + PCI_COMMAND;
	val = FUNC1(reg);

	if (val & (PCI_STATUS_REC_MASTER_ABORT << 16)) {
		FUNC3(reg,
			 (val & 0xffff) | (PCI_STATUS_REC_MASTER_ABORT << 16));

		/* clear PCI Controller error, FRE, PMFE */
		reg = epci_base + SCC_EPCI_STATUS;
		FUNC3(reg, SCC_EPCI_INT_PAI);

		reg = epci_base + SCC_EPCI_VCSR;
		val = FUNC1(reg) & 0xffff;
		val |= SCC_EPCI_VCSR_FRE;
		FUNC3(reg, val);

		reg = epci_base + SCC_EPCI_VISTAT;
		FUNC3(reg, SCC_EPCI_VISTAT_PMFE);
		return PCIBIOS_DEVICE_NOT_FOUND;
	}

	return PCIBIOS_SUCCESSFUL;
}