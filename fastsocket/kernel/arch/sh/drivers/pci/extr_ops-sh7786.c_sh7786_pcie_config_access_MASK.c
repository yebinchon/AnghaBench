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
struct pci_channel {int dummy; } ;
struct pci_bus {int number; struct pci_channel* sysdata; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_FUNC_NOT_SUPPORTED ; 
 int PCIBIOS_SUCCESSFUL ; 
 unsigned char PCI_ACCESS_READ ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  SH4A_PCIEPAR ; 
 int /*<<< orphan*/  SH4A_PCIEPCICONF1 ; 
 int /*<<< orphan*/  SH4A_PCIEPCTLR ; 
 int /*<<< orphan*/  SH4A_PCIEPDR ; 
 int FUNC2 (struct pci_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_channel*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(unsigned char access_type,
		struct pci_bus *bus, unsigned int devfn, int where, u32 *data)
{
	struct pci_channel *chan = bus->sysdata;
	int dev, func;

	dev = FUNC1(devfn);
	func = FUNC0(devfn);

	if (bus->number > 255 || dev > 31 || func > 7)
		return PCIBIOS_FUNC_NOT_SUPPORTED;
	if (devfn)
		return PCIBIOS_DEVICE_NOT_FOUND;

	/* Set the PIO address */
	FUNC3(chan, (bus->number << 24) | (dev << 19) |
				(func << 16) | (where & ~3), SH4A_PCIEPAR);

	/* Enable the configuration access */
	FUNC3(chan, (1 << 31), SH4A_PCIEPCTLR);

	if (access_type == PCI_ACCESS_READ)
		*data = FUNC2(chan, SH4A_PCIEPDR);
	else
		FUNC3(chan, *data, SH4A_PCIEPDR);

	/* Check for master and target aborts */
	if (FUNC2(chan, SH4A_PCIEPCICONF1) & ((1 << 29) | (1 << 28)))
		return PCIBIOS_DEVICE_NOT_FOUND;

	return PCIBIOS_SUCCESSFUL;
}