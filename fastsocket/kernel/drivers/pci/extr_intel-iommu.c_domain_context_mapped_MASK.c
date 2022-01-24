#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_2__* bus; TYPE_1__* subordinate; } ;
struct intel_iommu {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  number; struct pci_dev* self; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct intel_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_iommu* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct pci_dev* FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev)
{
	int ret;
	struct pci_dev *tmp, *parent;
	struct intel_iommu *iommu;

	iommu = FUNC1(FUNC2(pdev->bus), pdev->bus->number,
				pdev->devfn);
	if (!iommu)
		return -ENODEV;

	ret = FUNC0(iommu, pdev->bus->number, pdev->devfn);
	if (!ret)
		return ret;
	/* dependent device mapping */
	tmp = FUNC3(pdev);
	if (!tmp)
		return ret;
	/* Secondary interface's bus number and devfn 0 */
	parent = pdev->bus->self;
	while (parent != tmp) {
		ret = FUNC0(iommu, parent->bus->number,
					    parent->devfn);
		if (!ret)
			return ret;
		parent = parent->bus->self;
	}
	if (FUNC4(tmp))
		return FUNC0(iommu, tmp->subordinate->number,
					     0);
	else
		return FUNC0(iommu, tmp->bus->number,
					     tmp->devfn);
}