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
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static struct pci_dev *FUNC2(struct pci_dev *dev)
{
	while (1) {
		if (!FUNC0(dev))
			break;
		if (FUNC1(dev) == PCI_EXP_TYPE_ROOT_PORT)
			return dev;
		if (!dev->bus->self)
			break;
		dev = dev->bus->self;
	}
	return NULL;
}