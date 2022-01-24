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
struct gendisk {int flags; TYPE_3__* queue; scalar_t__ minors; scalar_t__ first_minor; scalar_t__ major; int /*<<< orphan*/  part0; } ;
struct backing_dev_info {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {struct backing_dev_info backing_dev_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  devt; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int GENHD_FL_EXT_DEVT ; 
 int GENHD_FL_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct backing_dev_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gendisk*) ; 
 int /*<<< orphan*/  FUNC9 (struct gendisk*) ; 
 TYPE_2__* FUNC10 (struct gendisk*) ; 
 int /*<<< orphan*/  exact_lock ; 
 int /*<<< orphan*/  exact_match ; 
 int /*<<< orphan*/  FUNC11 (struct gendisk*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

void FUNC13(struct gendisk *disk)
{
	struct backing_dev_info *bdi;
	dev_t devt;
	int retval;

	/* minors == 0 indicates to use ext devt from part0 and should
	 * be accompanied with EXT_DEVT flag.  Make sure all
	 * parameters make sense.
	 */
	FUNC2(disk->minors && !(disk->major || disk->first_minor));
	FUNC2(!disk->minors && !(disk->flags & GENHD_FL_EXT_DEVT));

	disk->flags |= GENHD_FL_UP;

	retval = FUNC5(&disk->part0, &devt);
	if (retval) {
		FUNC2(1);
		return;
	}
	FUNC10(disk)->devt = devt;

	/* ->major and ->first_minor aren't supposed to be
	 * dereferenced from here on, but set them just in case.
	 */
	disk->major = FUNC0(devt);
	disk->first_minor = FUNC1(devt);

	/* Register BDI before referencing it from bdev */ 
	bdi = &disk->queue->backing_dev_info;
	FUNC4(bdi, FUNC9(disk));

	FUNC8(FUNC9(disk), disk->minors, NULL,
			    exact_match, exact_lock, disk);
	FUNC11(disk);
	FUNC7(disk);

	/*
	 * Take an extra ref on queue which will be put on disk_release()
	 * so that it sticks around as long as @disk is there.
	 */
	FUNC3(FUNC6(disk->queue));

	retval = FUNC12(&FUNC10(disk)->kobj, &bdi->dev->kobj,
				   "bdi");
	FUNC2(retval);
}