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
struct resource {unsigned long flags; scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  parent; } ;
struct pci_dev {int /*<<< orphan*/  dev; struct resource* resource; } ;
struct pci_bus {struct pci_dev* self; } ;

/* Variables and functions */
 unsigned long IORESOURCE_IO ; 
 unsigned long IORESOURCE_MEM ; 
 unsigned long IORESOURCE_PREFETCH ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int PCI_BRIDGE_RESOURCES ; 
 int PCI_NUM_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 

__attribute__((used)) static void FUNC4(struct pci_bus *bus,
					  unsigned long type)
{
	int idx;
	bool changed = false;
	struct pci_dev *dev;
	struct resource *r;
	unsigned long type_mask = IORESOURCE_IO | IORESOURCE_MEM |
				  IORESOURCE_PREFETCH;

	dev = bus->self;
	for (idx = PCI_BRIDGE_RESOURCES; idx < PCI_NUM_RESOURCES;
	     idx++) {
		r = &dev->resource[idx];
		if ((r->flags & type_mask) != type)
			continue;
		if (!r->parent)
			continue;
		/*
		 * if there are children under that, we should release them
		 *  all
		 */
		FUNC2(r);
		if (!FUNC3(r)) {
			FUNC1(KERN_DEBUG, &dev->dev,
				 "resource %d %pR released\n", idx, r);
			/* keep the old size */
			r->end = r->end - r->start;
			r->start = 0;
			r->flags = 0;
			changed = true;
		}
	}

	if (changed) {
		/* avoiding touch the one without PREF */
		if (type & IORESOURCE_PREFETCH)
			type = IORESOURCE_PREFETCH;
		FUNC0(bus, type);
	}
}