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
struct request_queue {scalar_t__ merge_bvec_fn; } ;
struct raid10_info {scalar_t__ recovery_disabled; TYPE_2__* rdev; scalar_t__ head_position; TYPE_2__* replacement; } ;
struct TYPE_3__ {int raid_disks; } ;
struct r10conf {int fullsync; struct raid10_info* mirrors; TYPE_1__ geo; } ;
struct mddev {scalar_t__ recovery_cp; int merge_check_needed; scalar_t__ recovery_disabled; scalar_t__ queue; scalar_t__ gendisk; struct r10conf* private; } ;
struct md_rdev {int saved_raid_disk; int raid_disk; int data_offset; int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  In_sync ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  Unmerged ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  FUNC0 (struct r10conf*,int,int) ; 
 struct request_queue* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct r10conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct r10conf*) ; 

__attribute__((used)) static int FUNC14(struct mddev *mddev, struct md_rdev *rdev)
{
	struct r10conf *conf = mddev->private;
	int err = -EEXIST;
	int mirror;
	int first = 0;
	int last = conf->geo.raid_disks - 1;
	struct request_queue *q = FUNC1(rdev->bdev);

	if (mddev->recovery_cp < MaxSector)
		/* only hot-add to in-sync arrays, as recovery is
		 * very different from resync
		 */
		return -EBUSY;
	if (rdev->saved_raid_disk < 0 && !FUNC0(conf, 1, -1))
		return -EINVAL;

	if (rdev->raid_disk >= 0)
		first = last = rdev->raid_disk;

	if (q->merge_bvec_fn) {
		FUNC10(Unmerged, &rdev->flags);
		mddev->merge_check_needed = 1;
	}

	if (rdev->saved_raid_disk >= first &&
	    conf->mirrors[rdev->saved_raid_disk].rdev == NULL)
		mirror = rdev->saved_raid_disk;
	else
		mirror = first;
	for ( ; mirror <= last ; mirror++) {
		struct raid10_info *p = &conf->mirrors[mirror];
		if (p->recovery_disabled == mddev->recovery_disabled)
			continue;
		if (p->rdev) {
			if (!FUNC12(WantReplacement, &p->rdev->flags) ||
			    p->replacement != NULL)
				continue;
			FUNC3(In_sync, &rdev->flags);
			FUNC10(Replacement, &rdev->flags);
			rdev->raid_disk = mirror;
			err = 0;
			if (mddev->gendisk)
				FUNC4(mddev->gendisk, rdev->bdev,
						  rdev->data_offset << 9);
			conf->fullsync = 1;
			FUNC9(p->replacement, rdev);
			break;
		}

		if (mddev->gendisk)
			FUNC4(mddev->gendisk, rdev->bdev,
					  rdev->data_offset << 9);

		p->head_position = 0;
		p->recovery_disabled = mddev->recovery_disabled - 1;
		rdev->raid_disk = mirror;
		err = 0;
		if (rdev->saved_raid_disk != mirror)
			conf->fullsync = 1;
		FUNC9(p->rdev, rdev);
		break;
	}
	if (err == 0 && FUNC12(Unmerged, &rdev->flags)) {
		/* Some requests might not have seen this new
		 * merge_bvec_fn.  We must wait for them to complete
		 * before merging the device fully.
		 * First we make sure any code which has tested
		 * our function has submitted the request, then
		 * we wait for all outstanding requests to complete.
		 */
		FUNC11();
		FUNC5(conf, 0);
		FUNC13(conf);
		FUNC3(Unmerged, &rdev->flags);
	}
	FUNC6(rdev, mddev);
	if (mddev->queue && FUNC2(FUNC1(rdev->bdev)))
		FUNC8(QUEUE_FLAG_DISCARD, mddev->queue);

	FUNC7(conf);
	return err;
}