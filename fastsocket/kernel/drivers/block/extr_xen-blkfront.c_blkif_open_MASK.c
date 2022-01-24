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
struct gendisk {struct blkfront_info* private_data; } ;
struct block_device {struct gendisk* bd_disk; } ;
struct blkfront_info {int /*<<< orphan*/  mutex; int /*<<< orphan*/  gd; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct block_device *bdev, fmode_t mode)
{
	struct gendisk *disk = bdev->bd_disk;
	struct blkfront_info *info;
	int err = 0;

	info = disk->private_data;
	if (!info) {
		/* xbdev gone */
		err = -ERESTARTSYS;
		goto out;
	}

	FUNC0(&info->mutex);

	if (!info->gd)
		/* xbdev is closed */
		err = -ERESTARTSYS;

	FUNC1(&info->mutex);

out:
	return err;
}