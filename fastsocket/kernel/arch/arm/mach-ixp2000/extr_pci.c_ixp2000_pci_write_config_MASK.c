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
struct pci_bus {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int* bytemask ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int* FUNC1 (int /*<<< orphan*/ ,unsigned int,int) ; 

int FUNC2(struct pci_bus *bus, unsigned int devfn, int where,
				int size, u32 value)
{
	u32 mask;
	u32 *addr;
	u32 temp;

	mask = ~(bytemask[size] << ((where % 0x4) * 8));
	addr = FUNC1(bus->number, devfn, where);
	if (!addr)
		return PCIBIOS_DEVICE_NOT_FOUND;
	temp = (u32) (value) << ((where % 0x4) * 8);
	*addr = (*addr & mask) | temp;

	FUNC0();

	return PCIBIOS_SUCCESSFUL;
}