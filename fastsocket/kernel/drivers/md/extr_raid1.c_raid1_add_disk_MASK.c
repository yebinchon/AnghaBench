#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_queue {scalar_t__ merge_bvec_fn; } ;
struct raid1_info {TYPE_1__* rdev; scalar_t__ head_position; } ;
struct r1conf {int raid_disks; scalar_t__ recovery_disabled; int fullsync; struct raid1_info* mirrors; } ;
struct mddev {scalar_t__ recovery_disabled; int merge_check_needed; scalar_t__ queue; scalar_t__ gendisk; struct r1conf* private; } ;
struct md_rdev {int raid_disk; int data_offset; scalar_t__ saved_raid_disk; int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  Unmerged ; 
 int /*<<< orphan*/  WantReplacement ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r1conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (struct r1conf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct r1conf*) ; 

__attribute__((used)) static int FUNC13(struct mddev *mddev, struct md_rdev *rdev)
{
	struct r1conf *conf = mddev->private;
	int err = -EEXIST;
	int mirror = 0;
	struct raid1_info *p;
	int first = 0;
	int last = conf->raid_disks - 1;
	struct request_queue *q = FUNC0(rdev->bdev);

	if (mddev->recovery_disabled == conf->recovery_disabled)
		return -EBUSY;

	if (rdev->raid_disk >= 0)
		first = last = rdev->raid_disk;

	if (q->merge_bvec_fn) {
		FUNC9(Unmerged, &rdev->flags);
		mddev->merge_check_needed = 1;
	}

	for (mirror = first; mirror <= last; mirror++) {
		p = conf->mirrors+mirror;
		if (!p->rdev) {

			if (mddev->gendisk)
				FUNC3(mddev->gendisk, rdev->bdev,
						  rdev->data_offset << 9);

			p->head_position = 0;
			rdev->raid_disk = mirror;
			err = 0;
			/* As all devices are equivalent, we don't need a full recovery
			 * if this was recently any drive of the array
			 */
			if (rdev->saved_raid_disk < 0)
				conf->fullsync = 1;
			FUNC8(p->rdev, rdev);
			break;
		}
		if (FUNC11(WantReplacement, &p->rdev->flags) &&
		    p[conf->raid_disks].rdev == NULL) {
			/* Add this device as a replacement */
			FUNC2(In_sync, &rdev->flags);
			FUNC9(Replacement, &rdev->flags);
			rdev->raid_disk = mirror;
			err = 0;
			conf->fullsync = 1;
			FUNC8(p[conf->raid_disks].rdev, rdev);
			break;
		}
	}
	if (err == 0 && FUNC11(Unmerged, &rdev->flags)) {
		/* Some requests might not have seen this new
		 * merge_bvec_fn.  We must wait for them to complete
		 * before merging the device fully.
		 * First we make sure any code which has tested
		 * our function has submitted the request, then
		 * we wait for all outstanding requests to complete.
		 */
		FUNC10();
		FUNC4(conf, 0);
		FUNC12(conf);
		FUNC2(Unmerged, &rdev->flags);
	}
	FUNC5(rdev, mddev);
	if (mddev->queue && FUNC1(FUNC0(rdev->bdev)))
		FUNC7(QUEUE_FLAG_DISCARD, mddev->queue);
	FUNC6(conf);
	return err;
}