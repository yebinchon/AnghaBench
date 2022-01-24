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
struct pci_dev {TYPE_2__* ats; scalar_t__ is_virtfn; scalar_t__ is_physfn; TYPE_1__* sriov; struct pci_dev* physfn; } ;
struct TYPE_4__ {int is_enabled; int stu; scalar_t__ pos; int /*<<< orphan*/  ref_cnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ PCI_ATS_CTRL ; 
 int /*<<< orphan*/  PCI_ATS_CTRL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PCI_ATS_MIN_STU ; 
 int FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC6(struct pci_dev *dev, int ps)
{
	int rc;
	u16 ctrl;

	FUNC0(dev->ats && dev->ats->is_enabled);

	if (ps < PCI_ATS_MIN_STU)
		return -EINVAL;

	if (dev->is_physfn || dev->is_virtfn) {
		struct pci_dev *pdev = dev->is_physfn ? dev : dev->physfn;

		FUNC3(&pdev->sriov->lock);
		if (pdev->ats)
			rc = pdev->ats->stu == ps ? 0 : -EINVAL;
		else
			rc = FUNC2(pdev, ps);

		if (!rc)
			pdev->ats->ref_cnt++;
		FUNC4(&pdev->sriov->lock);
		if (rc)
			return rc;
	}

	if (!dev->is_physfn) {
		rc = FUNC2(dev, ps);
		if (rc)
			return rc;
	}

	ctrl = PCI_ATS_CTRL_ENABLE;
	if (!dev->is_virtfn)
		ctrl |= FUNC1(ps - PCI_ATS_MIN_STU);
	FUNC5(dev, dev->ats->pos + PCI_ATS_CTRL, ctrl);

	dev->ats->is_enabled = 1;

	return 0;
}