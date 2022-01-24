#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct pci_controller {int dummy; } ;
struct pci_bus {int dummy; } ;
struct celleb_pci_resource {TYPE_1__* r; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
#define  PCI_BASE_ADDRESS_0 133 
#define  PCI_BASE_ADDRESS_1 132 
#define  PCI_BASE_ADDRESS_2 131 
#define  PCI_BASE_ADDRESS_3 130 
#define  PCI_BASE_ADDRESS_4 129 
#define  PCI_BASE_ADDRESS_5 128 
 int /*<<< orphan*/  FUNC1 (char*,int,int,scalar_t__) ; 
 char* FUNC2 (struct pci_controller*,unsigned int,unsigned int) ; 
 struct celleb_pci_resource* FUNC3 (struct pci_controller*,unsigned int,unsigned int) ; 
 struct pci_controller* FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct pci_bus *bus,
		unsigned int devfn, int where, int size, u32 val)
{
	char *config;
	struct pci_controller *hose = FUNC4(bus);
	struct celleb_pci_resource *res;
	unsigned int devno = devfn >> 3;
	unsigned int fn = devfn & 0x7;

	/* allignment check */
	FUNC0(where % size);

	config = FUNC2(hose, devno, fn);

	if (!config)
		return PCIBIOS_DEVICE_NOT_FOUND;

	if (val == ~0) {
		int i = (where - PCI_BASE_ADDRESS_0) >> 3;

		switch (where) {
		case PCI_BASE_ADDRESS_0:
		case PCI_BASE_ADDRESS_2:
			if (size != 4)
				return PCIBIOS_DEVICE_NOT_FOUND;
			res = FUNC3(hose, devno, fn);
			if (!res)
				return PCIBIOS_DEVICE_NOT_FOUND;
			FUNC1(config, where, size,
					(res->r[i].end - res->r[i].start));
			return PCIBIOS_SUCCESSFUL;
		case PCI_BASE_ADDRESS_1:
		case PCI_BASE_ADDRESS_3:
		case PCI_BASE_ADDRESS_4:
		case PCI_BASE_ADDRESS_5:
			break;
		default:
			break;
		}
	}

	FUNC1(config, where, size, val);
	FUNC5("    fake write: where=%x, size=%d, val=%x\n",
		 where, size, val);

	return PCIBIOS_SUCCESSFUL;
}