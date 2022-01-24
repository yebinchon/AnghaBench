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
struct pci_sriov {int nr_virtfn; int cap; int ctrl; scalar_t__ link; scalar_t__ pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {scalar_t__ devfn; TYPE_1__ dev; struct pci_sriov* sriov; } ;

/* Variables and functions */
 int PCI_SRIOV_CAP_VFM ; 
 scalar_t__ PCI_SRIOV_CTRL ; 
 int PCI_SRIOV_CTRL_MSE ; 
 int PCI_SRIOV_CTRL_VFE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *dev)
{
	int i;
	struct pci_sriov *iov = dev->sriov;

	if (!iov->nr_virtfn)
		return;

	if (iov->cap & PCI_SRIOV_CAP_VFM)
		FUNC3(dev);

	for (i = 0; i < iov->nr_virtfn; i++)
		FUNC6(dev, i, 0);

	iov->ctrl &= ~(PCI_SRIOV_CTRL_VFE | PCI_SRIOV_CTRL_MSE);
	FUNC0(dev);
	FUNC2(dev, iov->pos + PCI_SRIOV_CTRL, iov->ctrl);
	FUNC4(1);
	FUNC1(dev);

	if (iov->link != dev->devfn)
		FUNC5(&dev->dev.kobj, "dep_link");

	iov->nr_virtfn = 0;
}