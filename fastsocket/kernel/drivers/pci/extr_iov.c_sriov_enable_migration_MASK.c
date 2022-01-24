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
typedef  scalar_t__ u32 ;
struct pci_sriov {int initial; int ctrl; scalar_t__ pos; int /*<<< orphan*/  mtask; int /*<<< orphan*/  mstate; } ;
struct pci_dev {struct pci_sriov* sriov; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_SRIOV_CTRL ; 
 int PCI_SRIOV_CTRL_INTR ; 
 int PCI_SRIOV_CTRL_VFM ; 
 scalar_t__ PCI_SRIOV_VFM ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int PCI_STD_RESOURCE_END ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  sriov_migration_task ; 

__attribute__((used)) static int FUNC8(struct pci_dev *dev, int nr_virtfn)
{
	int bir;
	u32 table;
	resource_size_t pa;
	struct pci_sriov *iov = dev->sriov;

	if (nr_virtfn <= iov->initial)
		return 0;

	FUNC4(dev, iov->pos + PCI_SRIOV_VFM, &table);
	bir = FUNC1(table);
	if (bir > PCI_STD_RESOURCE_END)
		return -EIO;

	table = FUNC2(table);
	if (table + nr_virtfn > FUNC5(dev, bir))
		return -EIO;

	pa = FUNC6(dev, bir) + table;
	iov->mstate = FUNC3(pa, nr_virtfn);
	if (!iov->mstate)
		return -ENOMEM;

	FUNC0(&iov->mtask, sriov_migration_task);

	iov->ctrl |= PCI_SRIOV_CTRL_VFM | PCI_SRIOV_CTRL_INTR;
	FUNC7(dev, iov->pos + PCI_SRIOV_CTRL, iov->ctrl);

	return 0;
}