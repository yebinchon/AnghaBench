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
struct dasd_block {struct block_device* bdev; int /*<<< orphan*/  gdp; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKRRPART ; 
 int ENODEV ; 
 int /*<<< orphan*/  FMODE_READ ; 
 struct block_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct dasd_block *block)
{
	struct block_device *bdev;

	bdev = FUNC0(block->gdp, 0);
	if (!bdev || FUNC1(bdev, FMODE_READ) < 0)
		return -ENODEV;
	/*
	 * See fs/partition/check.c:register_disk,rescan_partitions
	 * Can't call rescan_partitions directly. Use ioctl.
	 */
	FUNC2(bdev, BLKRRPART, 0);
	/*
	 * Since the matching blkdev_put call to the blkdev_get in
	 * this function is not called before dasd_destroy_partitions
	 * the offline open_count limit needs to be increased from
	 * 0 to 1. This is done by setting device->bdev (see
	 * dasd_generic_set_offline). As long as the partition
	 * detection is running no offline should be allowed. That
	 * is why the assignment to device->bdev is done AFTER
	 * the BLKRRPART ioctl.
	 */
	block->bdev = bdev;
	return 0;
}