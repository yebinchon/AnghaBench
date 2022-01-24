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
struct pci_controller {struct pci_bus* bus; } ;
struct pci_bus {int number; } ;
typedef  scalar_t__ PCI_IO_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static PCI_IO_ADDR FUNC2(struct pci_bus *bus,
		struct pci_controller *hose, unsigned int devfn, int where)
{
	PCI_IO_ADDR addr;

	if (bus != hose->bus)
		addr = FUNC0(hose) +
		       (((bus->number & 0xff) << 16)
			| ((devfn & 0xff) << 8)
			| (where & 0xff)
			| 0x01000000);
	else
		addr = FUNC0(hose) +
		       (((devfn & 0xff) << 8) | (where & 0xff));

	FUNC1("EPCI: config_addr = 0x%p\n", addr);

	return addr;
}