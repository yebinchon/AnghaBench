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
 scalar_t__ KS8695_PBCD ; 
 scalar_t__ KS8695_PCI_VA ; 
 int PCIBIOS_SUCCESSFUL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ pci_cfg_dbg ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct pci_bus *bus,
			unsigned int devfn, int where, int size, u32 *value)
{
	FUNC1(bus->number, devfn, where);

	*value = FUNC0(KS8695_PCI_VA +  KS8695_PBCD);

	switch (size) {
		case 4:
			break;
		case 2:
			*value = *value >> ((where & 2) * 8);
			*value &= 0xffff;
			break;
		case 1:
			*value = *value >> ((where & 3) * 8);
			*value &= 0xff;
			break;
	}

	if (pci_cfg_dbg) {
		FUNC2("read: %d,%08x,%02x,%d: %08x (%08x)\n",
			bus->number, devfn, where, size, *value,
			FUNC0(KS8695_PCI_VA +  KS8695_PBCD));
	}

	return PCIBIOS_SUCCESSFUL;
}