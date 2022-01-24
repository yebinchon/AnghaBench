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
struct resource {int /*<<< orphan*/  flags; } ;
struct pci_dev {int /*<<< orphan*/  rom_base_reg; struct resource* resource; } ;
struct pci_bus_region {int start; } ;

/* Variables and functions */
 int PCI_ROM_ADDRESS_ENABLE ; 
 int PCI_ROM_ADDRESS_MASK ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct pci_bus_region*,struct resource*) ; 

int FUNC3(struct pci_dev *pdev)
{
	struct resource *res = pdev->resource + PCI_ROM_RESOURCE;
	struct pci_bus_region region;
	u32 rom_addr;

	if (!res->flags)
		return -1;

	FUNC2(pdev, &region, res);
	FUNC0(pdev, pdev->rom_base_reg, &rom_addr);
	rom_addr &= ~PCI_ROM_ADDRESS_MASK;
	rom_addr |= region.start | PCI_ROM_ADDRESS_ENABLE;
	FUNC1(pdev, pdev->rom_base_reg, rom_addr);
	return 0;
}