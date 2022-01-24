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
typedef  int u16 ;
struct resource {int flags; } ;
struct pci_dev_rh1 {int /*<<< orphan*/  mmio_always_on; } ;
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ rh_reserved1; struct resource* resource; } ;
struct pci_bus_region {int start; scalar_t__ end; } ;
typedef  enum pci_bar_type { ____Placeholder_pci_bar_type } pci_bar_type ;

/* Variables and functions */
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM_64 ; 
 int IORESOURCE_PCI_FIXED ; 
 int IORESOURCE_ROM_ENABLE ; 
 int IORESOURCE_UNSET ; 
 scalar_t__ PCI_BASE_ADDRESS_IO_MASK ; 
 scalar_t__ PCI_BASE_ADDRESS_MEM_MASK ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_MEMORY ; 
 int PCI_REGION_FLAG_MASK ; 
 int PCI_ROM_ADDRESS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,struct resource*,unsigned long long,unsigned long long) ; 
 int pci_bar_unknown ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct pci_bus_region*,struct resource*) ; 

void FUNC8(struct pci_dev *dev, int resno)
{
	struct pci_bus_region region;
	bool disable;
	u16 cmd;
	u32 new, check, mask;
	int reg;
	enum pci_bar_type type;
	struct resource *res = dev->resource + resno;

	/*
	 * Ignore resources for unimplemented BARs and unused resource slots
	 * for 64 bit BARs.
	 */
	if (!res->flags)
		return;

	/*
	 * Ignore non-moveable resources.  This might be legacy resources for
	 * which no functional BAR register exists or another important
	 * system resource we shouldn't move around.
	 */
	if (res->flags & IORESOURCE_PCI_FIXED)
		return;

	FUNC7(dev, &region, res);

	new = region.start | (res->flags & PCI_REGION_FLAG_MASK);
	if (res->flags & IORESOURCE_IO)
		mask = (u32)PCI_BASE_ADDRESS_IO_MASK;
	else
		mask = (u32)PCI_BASE_ADDRESS_MEM_MASK;

	reg = FUNC4(dev, resno, &type);
	if (!reg)
		return;
	if (type != pci_bar_unknown) {
		if (!(res->flags & IORESOURCE_ROM_ENABLE))
			return;
		new |= PCI_ROM_ADDRESS_ENABLE;
	}

	/*
	 * We can't update a 64-bit BAR automically, so when possible,
	 * disable decoding so that a half-updated BAR won't conflict
	 * with another device.
	 */
	disable = (res->flags & IORESOURCE_MEM_64) &&
		  !((struct pci_dev_rh1 *)dev->rh_reserved1)->mmio_always_on;
	if (disable) {
		FUNC3(dev, PCI_COMMAND, &cmd);
		FUNC6(dev, PCI_COMMAND,
				      cmd & ~PCI_COMMAND_MEMORY);
	}

	FUNC5(dev, reg, new);
	FUNC2(dev, reg, &check);

	if ((new ^ check) & mask) {
		FUNC0(&dev->dev, "BAR %d: error updating (%#08x != %#08x)\n",
			resno, new, check);
	}

	if (res->flags & IORESOURCE_MEM_64) {
		new = region.start >> 16 >> 16;
		FUNC5(dev, reg + 4, new);
		FUNC2(dev, reg + 4, &check);
		if (check != new) {
			FUNC0(&dev->dev, "BAR %d: error updating "
			       "(high %#08x != %#08x)\n", resno, new, check);
		}
	}

	if (disable)
		FUNC6(dev, PCI_COMMAND, cmd);

	res->flags &= ~IORESOURCE_UNSET;
	FUNC1(&dev->dev, "BAR %d: set to %pR (PCI address [%#llx-%#llx]\n",
		 resno, res, (unsigned long long)region.start,
		 (unsigned long long)region.end);
}