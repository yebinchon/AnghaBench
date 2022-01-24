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
struct mddev {int ro; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  recovery; int /*<<< orphan*/  gendisk; scalar_t__ pers; int /*<<< orphan*/  openers; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct mddev *mddev, struct block_device *bdev)
{
	int err = 0;
	FUNC4(&mddev->open_mutex);
	if (FUNC1(&mddev->openers) > !!bdev) {
		FUNC6("md: %s still in use.\n",FUNC3(mddev));
		err = -EBUSY;
		goto out;
	}
	if (bdev)
		FUNC8(bdev);
	if (mddev->pers) {
		FUNC0(mddev);

		err  = -ENXIO;
		if (mddev->ro==1)
			goto out;
		mddev->ro = 1;
		FUNC7(mddev->gendisk, 1);
		FUNC2(MD_RECOVERY_FROZEN, &mddev->recovery);
		FUNC9(mddev->sysfs_state);
		err = 0;	
	}
out:
	FUNC5(&mddev->open_mutex);
	return err;
}