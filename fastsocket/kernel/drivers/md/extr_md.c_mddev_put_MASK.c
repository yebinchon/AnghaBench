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
struct mddev {scalar_t__ ctime; int /*<<< orphan*/  del_work; scalar_t__ gendisk; struct bio_set* bio_set; int /*<<< orphan*/  all_mddevs; int /*<<< orphan*/  hold_active; int /*<<< orphan*/  disks; int /*<<< orphan*/  raid_disks; int /*<<< orphan*/  active; } ;
struct bio_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_mddevs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_set*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  md_misc_wq ; 
 int /*<<< orphan*/  mddev_delayed_delete ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mddev *mddev)
{
	struct bio_set *bs = NULL;

	if (!FUNC1(&mddev->active, &all_mddevs_lock))
		return;
	if (!mddev->raid_disks && FUNC5(&mddev->disks) &&
	    mddev->ctime == 0 && !mddev->hold_active) {
		/* Array is not configured at all, and not held active,
		 * so destroy it */
		FUNC4(&mddev->all_mddevs);
		bs = mddev->bio_set;
		mddev->bio_set = NULL;
		if (mddev->gendisk) {
			/* We did a probe so need to clean up.  Call
			 * queue_work inside the spinlock so that
			 * flush_workqueue() after mddev_find will
			 * succeed in waiting for the work to be done.
			 */
			FUNC0(&mddev->del_work, mddev_delayed_delete);
			FUNC6(md_misc_wq, &mddev->del_work);
		} else
			FUNC3(mddev);
	}
	FUNC7(&all_mddevs_lock);
	if (bs)
		FUNC2(bs);
}