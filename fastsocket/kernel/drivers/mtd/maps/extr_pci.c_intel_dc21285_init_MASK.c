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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int bankwidth; unsigned long size; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct map_pci_info {int /*<<< orphan*/  base; TYPE_1__ map; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  mtd_pci_read32 ; 
 int /*<<< orphan*/  mtd_pci_write32 ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 unsigned long FUNC3 (struct pci_dev*,int) ; 
 unsigned long FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct pci_dev *dev, struct map_pci_info *map)
{
	unsigned long base, len;

	base = FUNC4(dev, PCI_ROM_RESOURCE);
	len  = FUNC3(dev, PCI_ROM_RESOURCE);

	if (!len || !base) {
		/*
		 * No ROM resource
		 */
		base = FUNC4(dev, 2);
		len  = FUNC3(dev, 2);

		/*
		 * We need to re-allocate PCI BAR2 address range to the
		 * PCI ROM BAR, and disable PCI BAR2.
		 */
	} else {
		/*
		 * Hmm, if an address was allocated to the ROM resource, but
		 * not enabled, should we be allocating a new resource for it
		 * or simply enabling it?
		 */
		FUNC1(dev);
		FUNC5("%s: enabling expansion ROM\n", FUNC2(dev));
	}

	if (!len || !base)
		return -ENXIO;

	map->map.bankwidth = 4;
	map->map.read = mtd_pci_read32,
	map->map.write = mtd_pci_write32,
	map->map.size     = len;
	map->base         = FUNC0(base, len);

	if (!map->base)
		return -ENOMEM;

	return 0;
}