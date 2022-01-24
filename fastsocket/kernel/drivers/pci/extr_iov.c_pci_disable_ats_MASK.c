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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {scalar_t__ is_physfn; TYPE_2__* sriov; TYPE_1__* ats; struct pci_dev* physfn; scalar_t__ is_virtfn; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  ref_cnt; scalar_t__ is_enabled; scalar_t__ pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PCI_ATS_CTRL ; 
 int /*<<< orphan*/  PCI_ATS_CTRL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC6(struct pci_dev *dev)
{
	u16 ctrl;

	FUNC0(!dev->ats || !dev->ats->is_enabled);

	FUNC4(dev, dev->ats->pos + PCI_ATS_CTRL, &ctrl);
	ctrl &= ~PCI_ATS_CTRL_ENABLE;
	FUNC5(dev, dev->ats->pos + PCI_ATS_CTRL, ctrl);

	dev->ats->is_enabled = 0;

	if (dev->is_physfn || dev->is_virtfn) {
		struct pci_dev *pdev = dev->is_physfn ? dev : dev->physfn;

		FUNC2(&pdev->sriov->lock);
		pdev->ats->ref_cnt--;
		if (!pdev->ats->ref_cnt)
			FUNC1(pdev);
		FUNC3(&pdev->sriov->lock);
	}

	if (!dev->is_physfn)
		FUNC1(dev);
}