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
struct pci_bus {int /*<<< orphan*/  number; scalar_t__ parent; } ;

/* Variables and functions */
 scalar_t__ CARDBUS_PCI_IDSEL ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pci_bus *bus, unsigned int devfn,
			      int where, int size, u32 val)
{
	int type;

	type = bus->parent ? 1 : 0;

	if (type == 0 && FUNC0(devfn) == CARDBUS_PCI_IDSEL)
		return PCIBIOS_DEVICE_NOT_FOUND;

	return FUNC1(type, bus->number, devfn,
				     where, size, val);
}