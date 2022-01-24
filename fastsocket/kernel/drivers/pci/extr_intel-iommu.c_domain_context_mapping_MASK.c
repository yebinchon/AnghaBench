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
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; TYPE_1__* subordinate; } ;
struct dmar_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; struct pci_dev* self; } ;

/* Variables and functions */
 int FUNC0 (struct dmar_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct pci_dev* FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC4(struct dmar_domain *domain, struct pci_dev *pdev,
			int translation)
{
	int ret;
	struct pci_dev *tmp, *parent;

	ret = FUNC0(domain, FUNC1(pdev->bus),
					 pdev->bus->number, pdev->devfn,
					 translation);
	if (ret)
		return ret;

	/* dependent device mapping */
	tmp = FUNC2(pdev);
	if (!tmp)
		return 0;
	/* Secondary interface's bus number and devfn 0 */
	parent = pdev->bus->self;
	while (parent != tmp) {
		ret = FUNC0(domain,
						 FUNC1(parent->bus),
						 parent->bus->number,
						 parent->devfn, translation);
		if (ret)
			return ret;
		parent = parent->bus->self;
	}
	if (FUNC3(tmp)) /* this is a PCIe-to-PCI bridge */
		return FUNC0(domain,
					FUNC1(tmp->subordinate),
					tmp->subordinate->number, 0,
					translation);
	else /* this is a legacy PCI bridge */
		return FUNC0(domain,
						  FUNC1(tmp->bus),
						  tmp->bus->number,
						  tmp->devfn,
						  translation);
}