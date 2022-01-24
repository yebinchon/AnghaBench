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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u16 ;
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct device {int /*<<< orphan*/ * bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 scalar_t__ amd_iommu_last_bdf ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 struct pci_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, u64 mask)
{
	u16 bdf;
	struct pci_dev *pcidev;

	/* No device or no PCI device */
	if (!dev || dev->bus != &pci_bus_type)
		return 0;

	pcidev = FUNC1(dev);

	bdf = FUNC0(pcidev->bus->number, pcidev->devfn);

	/* Out of our scope? */
	if (bdf > amd_iommu_last_bdf)
		return 0;

	return 1;
}