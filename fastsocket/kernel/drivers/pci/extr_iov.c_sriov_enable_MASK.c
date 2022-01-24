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
typedef  int u16 ;
struct resource {scalar_t__ parent; } ;
struct pci_sriov {int nr_virtfn; int total; int cap; int nres; int offset; int stride; scalar_t__ link; int ctrl; int initial; scalar_t__ pos; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {scalar_t__ devfn; TYPE_2__ dev; int /*<<< orphan*/  is_physfn; TYPE_1__* bus; struct resource* resource; struct pci_sriov* sriov; } ;
struct TYPE_3__ {scalar_t__ subordinate; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int PCI_IOV_RESOURCES ; 
 int PCI_SRIOV_CAP_VFM ; 
 scalar_t__ PCI_SRIOV_CTRL ; 
 int PCI_SRIOV_CTRL_MSE ; 
 int PCI_SRIOV_CTRL_VFE ; 
 scalar_t__ PCI_SRIOV_INITIAL_VF ; 
 int PCI_SRIOV_NUM_BARS ; 
 scalar_t__ PCI_SRIOV_NUM_VF ; 
 scalar_t__ PCI_SRIOV_VF_OFFSET ; 
 scalar_t__ PCI_SRIOV_VF_STRIDE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__,int) ; 
 int FUNC9 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *dev, int nr_virtfn)
{
	int rc;
	int i, j;
	int nres;
	u16 offset, stride, initial;
	struct resource *res;
	struct pci_dev *pdev;
	struct pci_sriov *iov = dev->sriov;

	if (!nr_virtfn)
		return 0;

	if (iov->nr_virtfn)
		return -EINVAL;

	FUNC7(dev, iov->pos + PCI_SRIOV_INITIAL_VF, &initial);
	if (initial > iov->total ||
	    (!(iov->cap & PCI_SRIOV_CAP_VFM) && (initial != iov->total)))
		return -EIO;

	if (nr_virtfn < 0 || nr_virtfn > iov->total ||
	    (!(iov->cap & PCI_SRIOV_CAP_VFM) && (nr_virtfn > initial)))
		return -EINVAL;

	FUNC8(dev, iov->pos + PCI_SRIOV_NUM_VF, nr_virtfn);
	FUNC7(dev, iov->pos + PCI_SRIOV_VF_OFFSET, &offset);
	FUNC7(dev, iov->pos + PCI_SRIOV_VF_STRIDE, &stride);
	if (!offset || (nr_virtfn > 1 && !stride))
		return -EIO;

	nres = 0;
	for (i = 0; i < PCI_SRIOV_NUM_BARS; i++) {
		res = dev->resource + PCI_IOV_RESOURCES + i;
		if (res->parent)
			nres++;
	}
	if (nres != iov->nres) {
		FUNC0(&dev->dev, "not enough MMIO resources for SR-IOV\n");
		return -ENOMEM;
	}

	iov->offset = offset;
	iov->stride = stride;

	if (FUNC14(dev, nr_virtfn - 1) > dev->bus->subordinate) {
		FUNC0(&dev->dev, "SR-IOV: bus number out of range\n");
		return -ENOMEM;
	}

	if (iov->link != dev->devfn) {
		pdev = FUNC6(dev->bus, iov->link);
		if (!pdev)
			return -ENODEV;

		FUNC5(pdev);

		if (!pdev->is_physfn)
			return -ENODEV;

		rc = FUNC11(&dev->dev.kobj,
					&pdev->dev.kobj, "dep_link");
		if (rc)
			return rc;
	}

	iov->ctrl |= PCI_SRIOV_CTRL_VFE | PCI_SRIOV_CTRL_MSE;
	FUNC3(dev);
	FUNC8(dev, iov->pos + PCI_SRIOV_CTRL, iov->ctrl);
	FUNC2(100);
	FUNC4(dev);

	iov->initial = initial;
	if (nr_virtfn < initial)
		initial = nr_virtfn;

	for (i = 0; i < initial; i++) {
		rc = FUNC13(dev, i, 0);
		if (rc)
			goto failed;
	}

	if (iov->cap & PCI_SRIOV_CAP_VFM) {
		rc = FUNC9(dev, nr_virtfn);
		if (rc)
			goto failed;
	}

	FUNC1(&dev->dev.kobj, KOBJ_CHANGE);
	iov->nr_virtfn = nr_virtfn;

	return 0;

failed:
	for (j = 0; j < i; j++)
		FUNC15(dev, j, 0);

	iov->ctrl &= ~(PCI_SRIOV_CTRL_VFE | PCI_SRIOV_CTRL_MSE);
	FUNC3(dev);
	FUNC8(dev, iov->pos + PCI_SRIOV_CTRL, iov->ctrl);
	FUNC10(1);
	FUNC4(dev);

	if (iov->link != dev->devfn)
		FUNC12(&dev->dev.kobj, "dep_link");

	return rc;
}