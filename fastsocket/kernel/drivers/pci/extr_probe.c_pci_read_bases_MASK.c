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
struct resource {int flags; } ;
struct pci_dev {int rom_base_reg; struct resource* resource; } ;

/* Variables and functions */
 int IORESOURCE_CACHEABLE ; 
 int IORESOURCE_MEM ; 
 int IORESOURCE_PREFETCH ; 
 int IORESOURCE_READONLY ; 
 int IORESOURCE_SIZEALIGN ; 
 unsigned int PCI_BASE_ADDRESS_0 ; 
 size_t PCI_ROM_RESOURCE ; 
 scalar_t__ FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,struct resource*,int) ; 
 int /*<<< orphan*/  pci_bar_mem32 ; 
 int /*<<< orphan*/  pci_bar_unknown ; 

__attribute__((used)) static void FUNC1(struct pci_dev *dev, unsigned int howmany, int rom)
{
	unsigned int pos, reg;

	for (pos = 0; pos < howmany; pos++) {
		struct resource *res = &dev->resource[pos];
		reg = PCI_BASE_ADDRESS_0 + (pos << 2);
		pos += FUNC0(dev, pci_bar_unknown, res, reg);
	}

	if (rom) {
		struct resource *res = &dev->resource[PCI_ROM_RESOURCE];
		dev->rom_base_reg = rom;
		res->flags = IORESOURCE_MEM | IORESOURCE_PREFETCH |
				IORESOURCE_READONLY | IORESOURCE_CACHEABLE |
				IORESOURCE_SIZEALIGN;
		FUNC0(dev, pci_bar_mem32, res, rom);
	}
}