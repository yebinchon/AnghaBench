#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  kobj; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct ib_uverbs_device {int devnum; int /*<<< orphan*/  comp; int /*<<< orphan*/  ref; TYPE_1__ cdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  num_comp_vectors; struct ib_device* ib_dev; int /*<<< orphan*/  xrcd_tree_mutex; int /*<<< orphan*/  xrcd_tree; } ;
struct ib_device {int /*<<< orphan*/  dma_device; scalar_t__ mmap; int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  alloc_ucontext; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_UVERBS_BASE_DEV ; 
 int IB_UVERBS_MAX_DEVICES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_abi_version ; 
 int /*<<< orphan*/  dev_attr_ibdev ; 
 int /*<<< orphan*/  dev_map ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_uverbs_device*,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct ib_device*,int /*<<< orphan*/ *,struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  ib_uverbs_release_dev ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_uverbs_device* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_lock ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ overflow_maj ; 
 int /*<<< orphan*/  overflow_map ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uverbs_class ; 
 int /*<<< orphan*/  uverbs_client ; 
 int /*<<< orphan*/  uverbs_fops ; 
 int /*<<< orphan*/  uverbs_mmap_fops ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC22(struct ib_device *device)
{
	int devnum;
	dev_t base;
	struct ib_uverbs_device *uverbs_dev;

	if (!device->alloc_ucontext)
		return;

	uverbs_dev = FUNC16(sizeof *uverbs_dev, GFP_KERNEL);
	if (!uverbs_dev)
		return;

	FUNC14(&uverbs_dev->ref);
	FUNC11(&uverbs_dev->comp);
	uverbs_dev->xrcd_tree = RB_ROOT;
	FUNC17(&uverbs_dev->xrcd_tree_mutex);

	FUNC19(&map_lock);
	devnum = FUNC8(dev_map, IB_UVERBS_MAX_DEVICES);
	if (devnum >= IB_UVERBS_MAX_DEVICES) {
		FUNC20(&map_lock);
		devnum = FUNC9();
		if (devnum < 0)
			goto err;

		FUNC19(&map_lock);
		uverbs_dev->devnum = devnum + IB_UVERBS_MAX_DEVICES;
		base = devnum + overflow_maj;
		FUNC18(devnum, overflow_map);
	} else {
		uverbs_dev->devnum = devnum;
		base = devnum + IB_UVERBS_BASE_DEV;
		FUNC18(devnum, dev_map);
	}
	FUNC20(&map_lock);

	uverbs_dev->ib_dev           = device;
	uverbs_dev->num_comp_vectors = device->num_comp_vectors;

	FUNC3(&uverbs_dev->cdev, NULL);
	uverbs_dev->cdev.owner = THIS_MODULE;
	uverbs_dev->cdev.ops = device->mmap ? &uverbs_mmap_fops : &uverbs_fops;
	FUNC13(&uverbs_dev->cdev.kobj, "uverbs%d", uverbs_dev->devnum);
	if (FUNC1(&uverbs_dev->cdev, base, 1))
		goto err_cdev;

	uverbs_dev->dev = FUNC5(uverbs_class, device->dma_device,
					uverbs_dev->cdev.dev, uverbs_dev,
					"uverbs%d", uverbs_dev->devnum);
	if (FUNC0(uverbs_dev->dev))
		goto err_cdev;

	if (FUNC6(uverbs_dev->dev, &dev_attr_ibdev))
		goto err_class;
	if (FUNC6(uverbs_dev->dev, &dev_attr_abi_version))
		goto err_class;

	FUNC10(device, &uverbs_client, uverbs_dev);

	return;

err_class:
	FUNC7(uverbs_class, uverbs_dev->cdev.dev);

err_cdev:
	FUNC2(&uverbs_dev->cdev);
	if (uverbs_dev->devnum < IB_UVERBS_MAX_DEVICES)
		FUNC4(devnum, dev_map);
	else
		FUNC4(devnum, overflow_map);

err:
	FUNC15(&uverbs_dev->ref, ib_uverbs_release_dev);
	FUNC21(&uverbs_dev->comp);
	FUNC12(uverbs_dev);
	return;
}