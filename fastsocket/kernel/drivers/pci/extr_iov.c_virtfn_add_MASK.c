#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct resource {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/  parent; } ;
struct pci_sriov {TYPE_3__* dev; int /*<<< orphan*/  total; scalar_t__ pos; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct pci_dev {int is_virtfn; int /*<<< orphan*/  bus; TYPE_1__ dev; int /*<<< orphan*/  physfn; struct resource* resource; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  devfn; struct pci_sriov* sriov; } ;
struct TYPE_6__ {TYPE_2__* sriov; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int PCI_IOV_RESOURCES ; 
 int PCI_SRIOV_NUM_BARS ; 
 scalar_t__ PCI_SRIOV_VF_DID ; 
 int VIRTFN_ID_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct resource*,struct resource*) ; 
 int FUNC17 (struct resource*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct pci_dev *dev, int id, int reset)
{
	int i;
	int rc;
	u64 size;
	char buf[VIRTFN_ID_LEN];
	struct pci_dev *virtfn;
	struct resource *res;
	struct pci_sriov *iov = dev->sriov;

	virtfn = FUNC2();
	if (!virtfn)
		return -ENOMEM;

	FUNC6(&iov->dev->sriov->lock);
	virtfn->bus = FUNC21(dev->bus, FUNC22(dev, id));
	if (!virtfn->bus) {
		FUNC4(virtfn);
		FUNC7(&iov->dev->sriov->lock);
		return -ENOMEM;
	}
	virtfn->devfn = FUNC23(dev, id);
	virtfn->vendor = dev->vendor;
	FUNC13(dev, iov->pos + PCI_SRIOV_VF_DID, &virtfn->device);
	FUNC15(virtfn);
	virtfn->dev.parent = dev->dev.parent;

	for (i = 0; i < PCI_SRIOV_NUM_BARS; i++) {
		res = dev->resource + PCI_IOV_RESOURCES + i;
		if (!res->parent)
			continue;
		virtfn->resource[i].name = FUNC12(virtfn);
		virtfn->resource[i].flags = res->flags;
		size = FUNC17(res);
		FUNC3(size, iov->total);
		virtfn->resource[i].start = res->start + size * id;
		virtfn->resource[i].end = virtfn->resource[i].start + size - 1;
		rc = FUNC16(res, &virtfn->resource[i]);
		FUNC0(rc);
	}

	if (reset)
		FUNC1(virtfn);

	FUNC11(virtfn, virtfn->bus);
	FUNC7(&iov->dev->sriov->lock);

	virtfn->physfn = FUNC9(dev);
	virtfn->is_virtfn = 1;

	rc = FUNC8(virtfn);
	if (rc)
		goto failed1;
	FUNC18(buf, "virtfn%u", id);
	rc = FUNC19(&dev->dev.kobj, &virtfn->dev.kobj, buf);
	if (rc)
		goto failed1;
	rc = FUNC19(&virtfn->dev.kobj, &dev->dev.kobj, "physfn");
	if (rc)
		goto failed2;

	FUNC5(&virtfn->dev.kobj, KOBJ_CHANGE);

	return 0;

failed2:
	FUNC20(&dev->dev.kobj, buf);
failed1:
	FUNC10(dev);
	FUNC6(&iov->dev->sriov->lock);
	FUNC14(virtfn);
	FUNC24(dev->bus, FUNC22(dev, id));
	FUNC7(&iov->dev->sriov->lock);

	return rc;
}