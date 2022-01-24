#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  gen; } ;
struct cnic_local {int (* alloc_resc ) (struct cnic_dev*) ;int (* start_hw ) (struct cnic_dev*) ;int /*<<< orphan*/  (* free_resc ) (struct cnic_dev*) ;int /*<<< orphan*/  (* enable_int ) (struct cnic_dev*) ;int /*<<< orphan*/  status_blk_num; TYPE_1__ status_blk; int /*<<< orphan*/  func; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {TYPE_2__* irq_arr; int /*<<< orphan*/  io_base; } ;
struct cnic_dev {TYPE_3__* pcidev; int /*<<< orphan*/  flags; int /*<<< orphan*/  netdev; int /*<<< orphan*/  regview; struct cnic_local* cnic_priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  devfn; } ;
struct TYPE_6__ {int /*<<< orphan*/  status_blk_num; int /*<<< orphan*/  status_blk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 int EALREADY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct cnic_dev*) ; 
 int FUNC7 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct cnic_dev*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_eth_dev *ethdev = cp->ethdev;
	int err;

	if (FUNC10(CNIC_F_CNIC_UP, &dev->flags))
		return -EALREADY;

	dev->regview = ethdev->io_base;
	FUNC3(dev->pcidev);
	cp->func = FUNC0(dev->pcidev->devfn);
	cp->status_blk.gen = ethdev->irq_arr[0].status_blk;
	cp->status_blk_num = ethdev->irq_arr[0].status_blk_num;

	err = cp->alloc_resc(dev);
	if (err) {
		FUNC2(dev->netdev, "allocate resource failure\n");
		goto err1;
	}

	err = cp->start_hw(dev);
	if (err)
		goto err1;

	err = FUNC1(dev);
	if (err)
		goto err1;

	FUNC5(CNIC_F_CNIC_UP, &dev->flags);

	cp->enable_int(dev);

	return 0;

err1:
	cp->free_resc(dev);
	FUNC4(dev->pcidev);
	return err;
}