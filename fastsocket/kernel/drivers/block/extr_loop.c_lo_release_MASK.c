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
struct loop_device {int lo_flags; int /*<<< orphan*/  lo_ctl_mutex; scalar_t__ lo_refcnt; } ;
struct gendisk {struct loop_device* private_data; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int LO_FLAGS_AUTOCLEAR ; 
 int FUNC0 (struct loop_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct loop_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct gendisk *disk, fmode_t mode)
{
	struct loop_device *lo = disk->private_data;
	int err;

	FUNC2(&lo->lo_ctl_mutex);

	if (--lo->lo_refcnt)
		goto out;

	if (lo->lo_flags & LO_FLAGS_AUTOCLEAR) {
		/*
		 * In autoclear mode, stop the loop thread
		 * and remove configuration after last close.
		 */
		err = FUNC0(lo, NULL);
		if (!err)
			goto out_unlocked;
	} else {
		/*
		 * Otherwise keep thread (if running) and config,
		 * but flush possible ongoing bios in thread.
		 */
		FUNC1(lo);
	}

out:
	FUNC3(&lo->lo_ctl_mutex);
out_unlocked:
	return 0;
}