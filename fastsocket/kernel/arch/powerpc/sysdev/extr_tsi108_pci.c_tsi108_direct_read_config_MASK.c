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
typedef  int /*<<< orphan*/  uint ;
typedef  int u32 ;
struct pci_controller {int dummy; } ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {scalar_t__ (* pci_exclude_device ) (struct pci_controller*,int /*<<< orphan*/ ,unsigned int) ;} ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned char volatile*,char*) ; 
 struct pci_controller* FUNC1 (struct pci_bus*) ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct pci_controller*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,int) ; 

int
FUNC5(struct pci_bus *bus, unsigned int devfn, int offset,
			  int len, u32 * val)
{
	volatile unsigned char *cfg_addr;
	struct pci_controller *hose = FUNC1(bus);
	u32 temp;

	if (ppc_md.pci_exclude_device)
		if (ppc_md.pci_exclude_device(hose, bus->number, devfn))
			return PCIBIOS_DEVICE_NOT_FOUND;

	cfg_addr = (unsigned char *)(FUNC4(bus->number,
							devfn,
							offset) | (offset &
								   0x03));

	switch (len) {
	case 1:
		FUNC0(temp, cfg_addr, "lbzx");
		break;
	case 2:
		FUNC0(temp, cfg_addr, "lhbrx");
		break;
	default:
		FUNC0(temp, cfg_addr, "lwbrx");
		break;
	}

	*val = temp;

#ifdef DEBUG
	if ((0xFFFFFFFF != temp) && (0xFFFF != temp) && (0xFF != temp)) {
		printk("PCI CFG read : ");
		printk("%d:0x%x:0x%x ", bus->number, devfn, offset);
		printk("%d ADDR=0x%08x ", len, (uint) cfg_addr);
		printk("data = 0x%x\n", *val);
	}
#endif
	return PCIBIOS_SUCCESSFUL;
}