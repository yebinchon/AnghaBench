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
struct brd_device {int dummy; } ;
struct block_device {int bd_openers; int /*<<< orphan*/  bd_mutex; TYPE_2__* bd_inode; TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_3__ {struct brd_device* private_data; } ;

/* Variables and functions */
 unsigned int BLKFLSBUF ; 
 int EBUSY ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (struct brd_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct block_device *bdev, fmode_t mode,
			unsigned int cmd, unsigned long arg)
{
	int error;
	struct brd_device *brd = bdev->bd_disk->private_data;

	if (cmd != BLKFLSBUF)
		return -ENOTTY;

	/*
	 * ram device BLKFLSBUF has special semantics, we want to actually
	 * release and destroy the ramdisk data.
	 */
	FUNC2(&bdev->bd_mutex);
	error = -EBUSY;
	if (bdev->bd_openers <= 1) {
		/*
		 * Invalidate the cache first, so it isn't written
		 * back to the device.
		 *
		 * Another thread might instantiate more buffercache here,
		 * but there is not much we can do to close that race.
		 */
		FUNC1();
		FUNC4(bdev->bd_inode->i_mapping, 0);
		FUNC0(brd);
		error = 0;
	}
	FUNC3(&bdev->bd_mutex);

	return error;
}