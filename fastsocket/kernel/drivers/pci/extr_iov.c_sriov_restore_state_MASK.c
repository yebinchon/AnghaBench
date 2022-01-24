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
typedef  int u16 ;
struct pci_sriov {int nr_virtfn; int ctrl; scalar_t__ pos; int /*<<< orphan*/  pgsz; } ;
struct pci_dev {struct pci_sriov* sriov; } ;

/* Variables and functions */
 int PCI_IOV_RESOURCES ; 
 int PCI_IOV_RESOURCE_END ; 
 scalar_t__ PCI_SRIOV_CTRL ; 
 int PCI_SRIOV_CTRL_VFE ; 
 scalar_t__ PCI_SRIOV_NUM_VF ; 
 scalar_t__ PCI_SRIOV_SYS_PGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	int i;
	u16 ctrl;
	struct pci_sriov *iov = dev->sriov;

	FUNC1(dev, iov->pos + PCI_SRIOV_CTRL, &ctrl);
	if (ctrl & PCI_SRIOV_CTRL_VFE)
		return;

	for (i = PCI_IOV_RESOURCES; i <= PCI_IOV_RESOURCE_END; i++)
		FUNC2(dev, i);

	FUNC3(dev, iov->pos + PCI_SRIOV_SYS_PGSIZE, iov->pgsz);
	FUNC4(dev, iov->pos + PCI_SRIOV_NUM_VF, iov->nr_virtfn);
	FUNC4(dev, iov->pos + PCI_SRIOV_CTRL, iov->ctrl);
	if (iov->ctrl & PCI_SRIOV_CTRL_VFE)
		FUNC0(100);
}