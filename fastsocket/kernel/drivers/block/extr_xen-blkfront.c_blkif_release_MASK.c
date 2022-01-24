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
struct xenbus_device {scalar_t__ state; } ;
struct gendisk {struct blkfront_info* private_data; } ;
struct block_device {scalar_t__ bd_openers; } ;
struct blkfront_info {int /*<<< orphan*/  mutex; struct xenbus_device* xbdev; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 scalar_t__ XenbusStateClosing ; 
 struct block_device* FUNC0 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct blkfront_info*) ; 

__attribute__((used)) static int FUNC7(struct gendisk *disk, fmode_t mode)
{
	struct blkfront_info *info = disk->private_data;
	struct block_device *bdev;
	struct xenbus_device *xbdev;

	bdev = FUNC0(disk, 0);

	if (bdev->bd_openers)
		goto out;

	/*
	 * Check if we have been instructed to close. We will have
	 * deferred this request, because the bdev was still open.
	 */

	FUNC3(&info->mutex);
	xbdev = info->xbdev;

	if (xbdev && xbdev->state == XenbusStateClosing) {
		/* pending switch to state closed */
		FUNC6(info);
		FUNC5(info->xbdev);
 	}

	FUNC4(&info->mutex);

	if (!xbdev) {
		/* sudden device removal */
		FUNC6(info);
		disk->private_data = NULL;
		FUNC2(info);
	}

out:
	FUNC1(bdev);
	return 0;
}