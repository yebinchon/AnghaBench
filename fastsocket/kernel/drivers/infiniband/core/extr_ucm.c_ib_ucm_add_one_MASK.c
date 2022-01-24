#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  kobj; int /*<<< orphan*/  owner; } ;
struct TYPE_8__ {int /*<<< orphan*/  release; int /*<<< orphan*/  devt; int /*<<< orphan*/  parent; int /*<<< orphan*/ * class; } ;
struct ib_ucm_device {int devnum; TYPE_5__ cdev; TYPE_1__ dev; struct ib_device* ib_dev; } ;
struct ib_device {int /*<<< orphan*/  dma_device; int /*<<< orphan*/  node_type; int /*<<< orphan*/  alloc_ucontext; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_UCM_BASE_DEV ; 
 int IB_UCM_MAX_DEVICES ; 
 scalar_t__ RDMA_TRANSPORT_IB ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (TYPE_5__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cm_class ; 
 int /*<<< orphan*/  dev_attr_ibdev ; 
 int /*<<< orphan*/  dev_map ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct ib_device*,int /*<<< orphan*/ *,struct ib_ucm_device*) ; 
 int /*<<< orphan*/  ib_ucm_release_dev ; 
 int /*<<< orphan*/  FUNC11 (struct ib_ucm_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 struct ib_ucm_device* FUNC13 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ overflow_maj ; 
 int /*<<< orphan*/  overflow_map ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ucm_client ; 
 int /*<<< orphan*/  ucm_fops ; 

__attribute__((used)) static void FUNC16(struct ib_device *device)
{
	int devnum;
	dev_t base;
	struct ib_ucm_device *ucm_dev;

	if (!device->alloc_ucontext ||
	    FUNC14(device->node_type) != RDMA_TRANSPORT_IB)
		return;

	ucm_dev = FUNC13(sizeof *ucm_dev, GFP_KERNEL);
	if (!ucm_dev)
		return;

	ucm_dev->ib_dev = device;

	devnum = FUNC8(dev_map, IB_UCM_MAX_DEVICES);
	if (devnum >= IB_UCM_MAX_DEVICES) {
		devnum = FUNC9();
		if (devnum < 0)
			goto err;

		ucm_dev->devnum = devnum + IB_UCM_MAX_DEVICES;
		base = devnum + overflow_maj;
		FUNC15(devnum, overflow_map);
	} else {
		ucm_dev->devnum = devnum;
		base = devnum + IB_UCM_BASE_DEV;
		FUNC15(devnum, dev_map);
	}

	FUNC2(&ucm_dev->cdev, &ucm_fops);
	ucm_dev->cdev.owner = THIS_MODULE;
	FUNC12(&ucm_dev->cdev.kobj, "ucm%d", ucm_dev->devnum);
	if (FUNC0(&ucm_dev->cdev, base, 1))
		goto err;

	ucm_dev->dev.class = &cm_class;
	ucm_dev->dev.parent = device->dma_device;
	ucm_dev->dev.devt = ucm_dev->cdev.dev;
	ucm_dev->dev.release = ib_ucm_release_dev;
	FUNC4(&ucm_dev->dev, "ucm%d", ucm_dev->devnum);
	if (FUNC6(&ucm_dev->dev))
		goto err_cdev;

	if (FUNC5(&ucm_dev->dev, &dev_attr_ibdev))
		goto err_dev;

	FUNC10(device, &ucm_client, ucm_dev);
	return;

err_dev:
	FUNC7(&ucm_dev->dev);
err_cdev:
	FUNC1(&ucm_dev->cdev);
	if (ucm_dev->devnum < IB_UCM_MAX_DEVICES)
		FUNC3(devnum, dev_map);
	else
		FUNC3(devnum, overflow_map);
err:
	FUNC11(ucm_dev);
	return;
}