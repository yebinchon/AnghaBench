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
struct pci_dev {int dummy; } ;

/* Variables and functions */

__attribute__((used)) static inline int FUNC0(const struct pci_dev *dev)
{
//	return dev->bus->number==0 && (dev->devfn==PCI_DEVFN(0,0));
//	return dev->bus->number==1;
//	return dev->bus->number==0 &&
//		(dev->devfn==PCI_DEVFN(2,0) || dev->devfn==PCI_DEVFN(3,0));
	return 0;
}