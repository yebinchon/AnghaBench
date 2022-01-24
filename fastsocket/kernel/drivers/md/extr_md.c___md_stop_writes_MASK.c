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
struct mddev {scalar_t__ ro; int in_sync; scalar_t__ flags; int /*<<< orphan*/  safemode_timer; int /*<<< orphan*/  recovery; scalar_t__ sync_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mddev *mddev)
{
	FUNC5(MD_RECOVERY_FROZEN, &mddev->recovery);
	if (mddev->sync_thread) {
		FUNC5(MD_RECOVERY_INTR, &mddev->recovery);
		FUNC2(mddev);
	}

	FUNC1(&mddev->safemode_timer);

	FUNC0(mddev);
	FUNC3(mddev);

	if (mddev->ro == 0 &&
	    (!mddev->in_sync || mddev->flags)) {
		/* mark array as shutdown cleanly */
		mddev->in_sync = 1;
		FUNC4(mddev, 1);
	}
}