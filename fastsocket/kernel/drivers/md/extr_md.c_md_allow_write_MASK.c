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
struct mddev {int safemode; int /*<<< orphan*/  flags; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  sysfs_state; scalar_t__ safemode_delay; scalar_t__ in_sync; TYPE_1__* pers; scalar_t__ ro; } ;
struct TYPE_2__ {int /*<<< orphan*/  sync_request; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  MD_CHANGE_CLEAN ; 
 int /*<<< orphan*/  MD_CHANGE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct mddev *mddev)
{
	if (!mddev->pers)
		return 0;
	if (mddev->ro)
		return 0;
	if (!mddev->pers->sync_request)
		return 0;

	FUNC2(&mddev->write_lock);
	if (mddev->in_sync) {
		mddev->in_sync = 0;
		FUNC1(MD_CHANGE_CLEAN, &mddev->flags);
		FUNC1(MD_CHANGE_PENDING, &mddev->flags);
		if (mddev->safemode_delay &&
		    mddev->safemode == 0)
			mddev->safemode = 1;
		FUNC3(&mddev->write_lock);
		FUNC0(mddev, 0);
		FUNC4(mddev->sysfs_state);
	} else
		FUNC3(&mddev->write_lock);

	if (FUNC5(MD_CHANGE_PENDING, &mddev->flags))
		return -EAGAIN;
	else
		return 0;
}