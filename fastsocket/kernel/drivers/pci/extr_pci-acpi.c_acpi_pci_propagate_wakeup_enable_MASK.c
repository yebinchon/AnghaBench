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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pci_bus {int /*<<< orphan*/ * bridge; struct pci_bus* parent; struct pci_dev* self; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct pci_bus *bus, bool enable)
{
	while (bus->parent) {
		struct pci_dev *bridge = bus->self;
		int ret;

		ret = FUNC0(&bridge->dev, enable);
		if (!ret || FUNC1(bridge))
			return;
		bus = bus->parent;
	}

	/* We have reached the root bus. */
	if (bus->bridge)
		FUNC0(bus->bridge, enable);
}