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
struct r5conf {int raid_disks; scalar_t__ reshape_progress; scalar_t__ recovery_disabled; struct disk_info* disks; } ;
struct mddev {scalar_t__ recovery_disabled; struct r5conf* private; } ;
struct md_rdev {int raid_disk; int /*<<< orphan*/  flags; int /*<<< orphan*/  nr_pending; } ;
struct disk_info {struct md_rdev* replacement; struct md_rdev* rdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC3 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mddev *mddev, struct md_rdev *rdev)
{
	struct r5conf *conf = mddev->private;
	int err = 0;
	int number = rdev->raid_disk;
	struct md_rdev **rdevp;
	struct disk_info *p = conf->disks + number;

	FUNC3(conf);
	if (rdev == p->rdev)
		rdevp = &p->rdev;
	else if (rdev == p->replacement)
		rdevp = &p->replacement;
	else
		return 0;

	if (number >= conf->raid_disks &&
	    conf->reshape_progress == MaxSector)
		FUNC1(In_sync, &rdev->flags);

	if (FUNC6(In_sync, &rdev->flags) ||
	    FUNC0(&rdev->nr_pending)) {
		err = -EBUSY;
		goto abort;
	}
	/* Only remove non-faulty devices if recovery
	 * isn't possible.
	 */
	if (!FUNC6(Faulty, &rdev->flags) &&
	    mddev->recovery_disabled != conf->recovery_disabled &&
	    !FUNC2(conf) &&
	    (!p->replacement || p->replacement == rdev) &&
	    number < conf->raid_disks) {
		err = -EBUSY;
		goto abort;
	}
	*rdevp = NULL;
	FUNC5();
	if (FUNC0(&rdev->nr_pending)) {
		/* lost the race, try later */
		err = -EBUSY;
		*rdevp = rdev;
	} else if (p->replacement) {
		/* We must have just cleared 'rdev' */
		p->rdev = p->replacement;
		FUNC1(Replacement, &p->replacement->flags);
		FUNC4(); /* Make sure other CPUs may see both as identical
			   * but will never see neither - if they are careful
			   */
		p->replacement = NULL;
		FUNC1(WantReplacement, &rdev->flags);
	} else
		/* We might have just removed the Replacement as faulty-
		 * clear the bit just in case
		 */
		FUNC1(WantReplacement, &rdev->flags);
abort:

	FUNC3(conf);
	return err;
}