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
struct resource {int flags; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pci_bus_region {int start; int end; } ;
struct pci_bus {struct resource** resource; struct pci_dev* self; } ;

/* Variables and functions */
 int IORESOURCE_MEM_64 ; 
 int IORESOURCE_PREFETCH ; 
 int /*<<< orphan*/  PCI_PREF_BASE_UPPER32 ; 
 int /*<<< orphan*/  PCI_PREF_LIMIT_UPPER32 ; 
 int /*<<< orphan*/  PCI_PREF_MEMORY_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct pci_bus_region*,struct resource*) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct pci_bus *bus)
{
	struct pci_dev *bridge = bus->self;
	struct resource *res;
	struct pci_bus_region region;
	u32 l, bu, lu;
	/* Clear out the upper 32 bits of PREF limit.
	   If PCI_PREF_BASE_UPPER32 was non-zero, this temporarily
	   disables PREF range, which is ok. */
	FUNC1(bridge, PCI_PREF_LIMIT_UPPER32, 0);

	/* Set up PREF base/limit. */
	bu = lu = 0;
	res = bus->resource[2];
	FUNC2(bridge, &region, res);
	if (res->flags & IORESOURCE_PREFETCH) {
		l = (region.start >> 16) & 0xfff0;
		l |= region.end & 0xfff00000;
		if (res->flags & IORESOURCE_MEM_64) {
			bu = FUNC3(region.start);
			lu = FUNC3(region.end);
		}
		FUNC0(&bridge->dev, "  bridge window %pR\n", res);
	}
	else {
		l = 0x0000fff0;
		FUNC0(&bridge->dev, "  bridge window [mem pref disabled]\n");
	}
	FUNC1(bridge, PCI_PREF_MEMORY_BASE, l);

	/* Set the upper 32 bits of PREF base & limit. */
	FUNC1(bridge, PCI_PREF_BASE_UPPER32, bu);
	FUNC1(bridge, PCI_PREF_LIMIT_UPPER32, lu);
}