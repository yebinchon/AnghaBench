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
struct pci_dev {int multifunction; int /*<<< orphan*/  is_added; } ;
struct pci_bus {scalar_t__ self; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct pci_bus*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

int FUNC2(struct pci_bus *bus, int devfn)
{
	int fn, nr = 0;
	struct pci_dev *dev;

	dev = FUNC0(bus, devfn);
	if (dev && !dev->is_added)	/* new device? */
		nr++;

	if (dev && dev->multifunction) {
		for (fn = 1; fn < 8; fn++) {
			dev = FUNC0(bus, devfn + fn);
			if (dev) {
				if (!dev->is_added)
					nr++;
				dev->multifunction = 1;
			}
		}
	}

	/* only one slot has pcie device */
	if (bus->self && nr)
		FUNC1(bus->self);

	return nr;
}