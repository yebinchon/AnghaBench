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
struct mtd_blktrans_ops {int (* open ) (struct mtd_blktrans_dev*) ;int /*<<< orphan*/  owner; } ;
struct mtd_blktrans_dev {TYPE_2__* mtd; struct mtd_blktrans_ops* tr; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_4__ {int /*<<< orphan*/  usecount; int /*<<< orphan*/  index; } ;
struct TYPE_3__ {struct mtd_blktrans_dev* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct block_device *bdev, fmode_t mode)
{
	struct mtd_blktrans_dev *dev = bdev->bd_disk->private_data;
	struct mtd_blktrans_ops *tr = dev->tr;
	int ret = -ENODEV;

	if (!FUNC0(NULL, dev->mtd->index))
		goto out;

	if (!FUNC4(tr->owner))
		goto out_tr;

	/* FIXME: Locking. A hot pluggable device can go away
	   (del_mtd_device can be called for it) without its module
	   being unloaded. */
	dev->mtd->usecount++;

	ret = 0;
	if (tr->open && (ret = tr->open(dev))) {
		dev->mtd->usecount--;
		FUNC2(dev->mtd);
	out_tr:
		FUNC1(tr->owner);
	}
 out:
	return ret;
}