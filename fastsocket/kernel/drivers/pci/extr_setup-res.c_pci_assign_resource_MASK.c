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
struct resource {int flags; } ;
struct pci_dev {int /*<<< orphan*/  dev; struct pci_bus* bus; struct resource* resource; } ;
struct pci_bus {struct pci_bus* parent; TYPE_1__* self; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_2__ {scalar_t__ transparent; } ;

/* Variables and functions */
 int EINVAL ; 
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM ; 
 int IORESOURCE_PREFETCH ; 
 int FUNC0 (struct pci_bus*,struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 

int FUNC4(struct pci_dev *dev, int resno)
{
	struct resource *res = dev->resource + resno;
	resource_size_t align;
	struct pci_bus *bus;
	int ret;
	char *type;

	align = FUNC2(dev, res);
	if (!align) {
		FUNC1(&dev->dev, "BAR %d: can't assign %pR "
			 "(bogus alignment)\n", resno, res);
		return -EINVAL;
	}

	bus = dev->bus;
	while ((ret = FUNC0(bus, dev, resno))) {
		if (bus->parent && bus->self->transparent)
			bus = bus->parent;
		else
			bus = NULL;
		if (bus)
			continue;
		break;
	}

	if (ret) {
		if (res->flags & IORESOURCE_MEM)
			if (res->flags & IORESOURCE_PREFETCH)
				type = "mem pref";
			else
				type = "mem";
		else if (res->flags & IORESOURCE_IO)
			type = "io";
		else
			type = "unknown";
		FUNC1(&dev->dev,
			 "BAR %d: can't assign %s (size %#llx)\n",
			 resno, type, (unsigned long long) FUNC3(res));
	}

	return ret;
}