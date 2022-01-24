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
struct mddev {int ro; int safemode; int /*<<< orphan*/  flags; int /*<<< orphan*/  sb_wait; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  thread; scalar_t__ in_sync; int /*<<< orphan*/  writes_pending; int /*<<< orphan*/  sync_thread; int /*<<< orphan*/  recovery; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MD_CHANGE_CLEAN ; 
 int /*<<< orphan*/  MD_CHANGE_PENDING ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

void FUNC10(struct mddev *mddev, struct bio *bi)
{
	int did_change = 0;
	if (FUNC2(bi) != WRITE)
		return;

	FUNC0(mddev->ro == 1);
	if (mddev->ro == 2) {
		/* need to switch to read/write */
		mddev->ro = 0;
		FUNC4(MD_RECOVERY_NEEDED, &mddev->recovery);
		FUNC3(mddev->thread);
		FUNC3(mddev->sync_thread);
		did_change = 1;
	}
	FUNC1(&mddev->writes_pending);
	if (mddev->safemode == 1)
		mddev->safemode = 0;
	if (mddev->in_sync) {
		FUNC5(&mddev->write_lock);
		if (mddev->in_sync) {
			mddev->in_sync = 0;
			FUNC4(MD_CHANGE_CLEAN, &mddev->flags);
			FUNC4(MD_CHANGE_PENDING, &mddev->flags);
			FUNC3(mddev->thread);
			did_change = 1;
		}
		FUNC6(&mddev->write_lock);
	}
	if (did_change)
		FUNC7(mddev->sysfs_state);
	FUNC9(mddev->sb_wait,
		   !FUNC8(MD_CHANGE_PENDING, &mddev->flags));
}