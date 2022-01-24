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
typedef  int uint32_t ;
typedef  int u32 ;
struct pci_bus {int number; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  TITAN_PCI_0_CONFIG_ADDRESS ; 
 int /*<<< orphan*/  TITAN_PCI_0_CONFIG_DATA ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus, unsigned int devfn, int reg,
	int size, u32 val)
{
	uint32_t address;
	int dev, busno, func;

	busno = bus->number;
	dev = FUNC1(devfn);
	func = FUNC0(devfn);

	address = (busno << 16) | (dev << 11) | (func << 8) |
		(reg & 0xfc) | 0x80000000;

	/* start the configuration cycle */
	FUNC3(address, TITAN_PCI_0_CONFIG_ADDRESS);

	/* write the data */
	switch (size) {
	case 1:
		FUNC2(val, TITAN_PCI_0_CONFIG_DATA + (~reg & 0x3));
		break;

	case 2:
		FUNC4(val, TITAN_PCI_0_CONFIG_DATA + (~reg & 0x2));
		break;

	case 4:
		FUNC3(val, TITAN_PCI_0_CONFIG_DATA);
		break;
	}

	return PCIBIOS_SUCCESSFUL;
}