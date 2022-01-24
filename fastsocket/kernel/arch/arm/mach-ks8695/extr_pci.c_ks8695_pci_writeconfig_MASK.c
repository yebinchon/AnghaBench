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
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ pci_cfg_dbg ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus,
			unsigned int devfn, int where, int size, u32 value)
{
	unsigned long tmp;

	if (pci_cfg_dbg) {
		FUNC3("write: %d,%08x,%02x,%d: %08x\n",
			bus->number, devfn, where, size, value);
	}

	FUNC2(bus->number, devfn, where);

	switch (size) {
		case 4:
			FUNC1(value, KS8695_PCI_VA +  KS8695_PBCD);
			break;
		case 2:
			tmp = FUNC0(KS8695_PCI_VA +  KS8695_PBCD);
			tmp &= ~(0xffff << ((where & 2) * 8));
			tmp |= value << ((where & 2) * 8);

			FUNC1(tmp, KS8695_PCI_VA +  KS8695_PBCD);
			break;
		case 1:
			tmp = FUNC0(KS8695_PCI_VA +  KS8695_PBCD);
			tmp &= ~(0xff << ((where & 3) * 8));
			tmp |= value << ((where & 3) * 8);

			FUNC1(tmp, KS8695_PCI_VA +  KS8695_PBCD);
			break;
	}

	return PCIBIOS_SUCCESSFUL;
}