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
typedef  int /*<<< orphan*/  u16 ;
struct resource {int flags; int /*<<< orphan*/  parent; } ;
struct pci_dev {int /*<<< orphan*/  dev; struct resource* resource; } ;

/* Variables and functions */
 int EINVAL ; 
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM ; 
 int IORESOURCE_ROM_ENABLE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  PCI_COMMAND_IO ; 
 int /*<<< orphan*/  PCI_COMMAND_MEMORY ; 
 int PCI_NUM_RESOURCES ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct pci_dev *dev, int mask)
{
	u16 cmd, old_cmd;
	int i;
	struct resource *r;

	FUNC2(dev, PCI_COMMAND, &cmd);
	old_cmd = cmd;

	for (i = 0; i < PCI_NUM_RESOURCES; i++) {
		if (!(mask & (1 << i)))
			continue;

		r = &dev->resource[i];

		if (!(r->flags & (IORESOURCE_IO | IORESOURCE_MEM)))
			continue;
		if ((i == PCI_ROM_RESOURCE) &&
				(!(r->flags & IORESOURCE_ROM_ENABLE)))
			continue;

		if (!r->parent) {
			FUNC0(&dev->dev, "device not available "
				"(can't reserve %pR)\n", r);
			return -EINVAL;
		}

		if (r->flags & IORESOURCE_IO)
			cmd |= PCI_COMMAND_IO;
		if (r->flags & IORESOURCE_MEM)
			cmd |= PCI_COMMAND_MEMORY;
	}

	if (cmd != old_cmd) {
		FUNC1(&dev->dev, "enabling device (%04x -> %04x)\n",
			 old_cmd, cmd);
		FUNC3(dev, PCI_COMMAND, cmd);
	}
	return 0;
}