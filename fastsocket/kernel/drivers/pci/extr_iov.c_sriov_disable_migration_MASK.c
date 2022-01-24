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
struct pci_sriov {int ctrl; int /*<<< orphan*/  mstate; int /*<<< orphan*/  mtask; scalar_t__ pos; } ;
struct pci_dev {struct pci_sriov* sriov; } ;

/* Variables and functions */
 scalar_t__ PCI_SRIOV_CTRL ; 
 int PCI_SRIOV_CTRL_INTR ; 
 int PCI_SRIOV_CTRL_VFM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	struct pci_sriov *iov = dev->sriov;

	iov->ctrl &= ~(PCI_SRIOV_CTRL_VFM | PCI_SRIOV_CTRL_INTR);
	FUNC2(dev, iov->pos + PCI_SRIOV_CTRL, iov->ctrl);

	FUNC0(&iov->mtask);
	FUNC1(iov->mstate);
}