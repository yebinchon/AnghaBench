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
struct raid1_info {struct md_rdev* rdev; } ;
struct r1conf {int raid_disks; scalar_t__ recovery_disabled; struct raid1_info* mirrors; } ;
struct mddev {scalar_t__ recovery_disabled; int degraded; struct r1conf* private; } ;
struct md_rdev {int raid_disk; int /*<<< orphan*/  flags; int /*<<< orphan*/  nr_pending; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct r1conf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct r1conf*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct r1conf*) ; 

__attribute__((used)) static int FUNC8(struct mddev *mddev, struct md_rdev *rdev)
{
	struct r1conf *conf = mddev->private;
	int err = 0;
	int number = rdev->raid_disk;
	struct raid1_info *p = conf->mirrors + number;

	if (rdev != p->rdev)
		p = conf->mirrors + conf->raid_disks + number;

	FUNC4(conf);
	if (rdev == p->rdev) {
		if (FUNC6(In_sync, &rdev->flags) ||
		    FUNC0(&rdev->nr_pending)) {
			err = -EBUSY;
			goto abort;
		}
		/* Only remove non-faulty devices if recovery
		 * is not possible.
		 */
		if (!FUNC6(Faulty, &rdev->flags) &&
		    mddev->recovery_disabled != conf->recovery_disabled &&
		    mddev->degraded < conf->raid_disks) {
			err = -EBUSY;
			goto abort;
		}
		p->rdev = NULL;
		FUNC5();
		if (FUNC0(&rdev->nr_pending)) {
			/* lost the race, try later */
			err = -EBUSY;
			p->rdev = rdev;
			goto abort;
		} else if (conf->mirrors[conf->raid_disks + number].rdev) {
			/* We just removed a device that is being replaced.
			 * Move down the replacement.  We drain all IO before
			 * doing this to avoid confusion.
			 */
			struct md_rdev *repl =
				conf->mirrors[conf->raid_disks + number].rdev;
			FUNC2(conf, 0);
			FUNC1(Replacement, &repl->flags);
			p->rdev = repl;
			conf->mirrors[conf->raid_disks + number].rdev = NULL;
			FUNC7(conf);
			FUNC1(WantReplacement, &rdev->flags);
		} else
			FUNC1(WantReplacement, &rdev->flags);
		err = FUNC3(mddev);
	}
abort:

	FUNC4(conf);
	return err;
}