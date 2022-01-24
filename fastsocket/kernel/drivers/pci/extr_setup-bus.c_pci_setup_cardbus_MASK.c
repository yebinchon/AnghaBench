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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pci_bus_region {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct pci_bus {struct resource** resource; int /*<<< orphan*/  subordinate; int /*<<< orphan*/  secondary; struct pci_dev* self; } ;

/* Variables and functions */
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  PCI_CB_IO_BASE_0 ; 
 int /*<<< orphan*/  PCI_CB_IO_BASE_1 ; 
 int /*<<< orphan*/  PCI_CB_IO_LIMIT_0 ; 
 int /*<<< orphan*/  PCI_CB_IO_LIMIT_1 ; 
 int /*<<< orphan*/  PCI_CB_MEMORY_BASE_0 ; 
 int /*<<< orphan*/  PCI_CB_MEMORY_BASE_1 ; 
 int /*<<< orphan*/  PCI_CB_MEMORY_LIMIT_0 ; 
 int /*<<< orphan*/  PCI_CB_MEMORY_LIMIT_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct resource*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct pci_bus_region*,struct resource*) ; 

void FUNC3(struct pci_bus *bus)
{
	struct pci_dev *bridge = bus->self;
	struct resource *res;
	struct pci_bus_region region;

	FUNC0(&bridge->dev, "CardBus bridge to [bus %02x-%02x]\n",
		 bus->secondary, bus->subordinate);

	res = bus->resource[0];
	FUNC2(bridge, &region, res);
	if (res->flags & IORESOURCE_IO) {
		/*
		 * The IO resource is allocated a range twice as large as it
		 * would normally need.  This allows us to set both IO regs.
		 */
		FUNC0(&bridge->dev, "  bridge window %pR\n", res);
		FUNC1(bridge, PCI_CB_IO_BASE_0,
					region.start);
		FUNC1(bridge, PCI_CB_IO_LIMIT_0,
					region.end);
	}

	res = bus->resource[1];
	FUNC2(bridge, &region, res);
	if (res->flags & IORESOURCE_IO) {
		FUNC0(&bridge->dev, "  bridge window %pR\n", res);
		FUNC1(bridge, PCI_CB_IO_BASE_1,
					region.start);
		FUNC1(bridge, PCI_CB_IO_LIMIT_1,
					region.end);
	}

	res = bus->resource[2];
	FUNC2(bridge, &region, res);
	if (res->flags & IORESOURCE_MEM) {
		FUNC0(&bridge->dev, "  bridge window %pR\n", res);
		FUNC1(bridge, PCI_CB_MEMORY_BASE_0,
					region.start);
		FUNC1(bridge, PCI_CB_MEMORY_LIMIT_0,
					region.end);
	}

	res = bus->resource[3];
	FUNC2(bridge, &region, res);
	if (res->flags & IORESOURCE_MEM) {
		FUNC0(&bridge->dev, "  bridge window %pR\n", res);
		FUNC1(bridge, PCI_CB_MEMORY_BASE_1,
					region.start);
		FUNC1(bridge, PCI_CB_MEMORY_LIMIT_1,
					region.end);
	}
}