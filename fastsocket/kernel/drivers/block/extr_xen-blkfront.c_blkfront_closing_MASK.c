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
struct block_device {int /*<<< orphan*/  bd_mutex; scalar_t__ bd_openers; } ;
struct blkfront_info {int /*<<< orphan*/  mutex; scalar_t__ gd; struct xenbus_device* xbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 scalar_t__ XenbusStateClosing ; 
 struct block_device* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct blkfront_info*) ; 

__attribute__((used)) static void
FUNC7(struct blkfront_info *info)
{
	struct xenbus_device *xbdev = info->xbdev;
	struct block_device *bdev = NULL;

	FUNC2(&info->mutex);

	if (xbdev->state == XenbusStateClosing) {
		FUNC3(&info->mutex);
		return;
	}

	if (info->gd)
		bdev = FUNC0(info->gd, 0);

	FUNC3(&info->mutex);

	if (!bdev) {
		FUNC5(xbdev);
		return;
	}

	FUNC2(&bdev->bd_mutex);

	if (bdev->bd_openers) {
		FUNC4(xbdev, -EBUSY,
				 "Device in use; refusing to close");
	} else {
		FUNC6(info);
		FUNC5(xbdev);
	}

	FUNC3(&bdev->bd_mutex);
	FUNC1(bdev);
}