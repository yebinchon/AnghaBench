#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stripe_head_state {scalar_t__ replacing; scalar_t__ syncing; } ;
struct stripe_head {size_t pd_idx; int /*<<< orphan*/  sector; TYPE_1__* dev; int /*<<< orphan*/  state; } ;
struct r5conf {int raid_disks; TYPE_3__* mddev; int /*<<< orphan*/  recovery_disabled; TYPE_2__* disks; int /*<<< orphan*/  wait_for_overlap; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  recovery_disabled; int /*<<< orphan*/  recovery; } ;
struct TYPE_5__ {struct md_rdev* replacement; struct md_rdev* rdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_RECOVERY_RECOVER ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  STRIPE_SECTORS ; 
 int /*<<< orphan*/  STRIPE_SYNCING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct r5conf *conf, struct stripe_head *sh,
		   struct stripe_head_state *s)
{
	int abort = 0;
	int i;

	FUNC0(STRIPE_SYNCING, &sh->state);
	if (FUNC3(R5_Overlap, &sh->dev[sh->pd_idx].flags))
		FUNC5(&conf->wait_for_overlap);
	s->syncing = 0;
	s->replacing = 0;
	/* There is nothing more to do for sync/check/repair.
	 * Don't even need to abort as that is handled elsewhere
	 * if needed, and not always wanted e.g. if there is a known
	 * bad block here.
	 * For recover/replace we need to record a bad block on all
	 * non-sync devices, or abort the recovery
	 */
	if (FUNC4(MD_RECOVERY_RECOVER, &conf->mddev->recovery)) {
		/* During recovery devices cannot be removed, so
		 * locking and refcounting of rdevs is not needed
		 */
		for (i = 0; i < conf->raid_disks; i++) {
			struct md_rdev *rdev = conf->disks[i].rdev;
			if (rdev
			    && !FUNC4(Faulty, &rdev->flags)
			    && !FUNC4(In_sync, &rdev->flags)
			    && !FUNC2(rdev, sh->sector,
						   STRIPE_SECTORS, 0))
				abort = 1;
			rdev = conf->disks[i].replacement;
			if (rdev
			    && !FUNC4(Faulty, &rdev->flags)
			    && !FUNC4(In_sync, &rdev->flags)
			    && !FUNC2(rdev, sh->sector,
						   STRIPE_SECTORS, 0))
				abort = 1;
		}
		if (abort)
			conf->recovery_disabled =
				conf->mddev->recovery_disabled;
	}
	FUNC1(conf->mddev, STRIPE_SECTORS, !abort);
}