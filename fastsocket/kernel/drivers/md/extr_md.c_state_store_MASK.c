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
struct mddev {scalar_t__ pers; int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; } ;
struct TYPE_2__ {scalar_t__ unacked_exist; } ;
struct md_rdev {int raid_disk; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; struct mddev* mddev; int /*<<< orphan*/  blocked_wait; TYPE_1__ badblocks; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  Blocked ; 
 int /*<<< orphan*/  BlockedBadBlocks ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  WriteMostly ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC11(struct md_rdev *rdev, const char *buf, size_t len)
{
	/* can write
	 *  faulty  - simulates an error
	 *  remove  - disconnects the device
	 *  writemostly - sets write_mostly
	 *  -writemostly - clears write_mostly
	 *  blocked - sets the Blocked flags
	 *  -blocked - clears the Blocked and possibly simulates an error
	 *  insync - sets Insync providing device isn't active
	 *  write_error - sets WriteErrorSeen
	 *  -write_error - clears WriteErrorSeen
	 */
	int err = -EINVAL;
	if (FUNC1(buf, "faulty") && rdev->mddev->pers) {
		FUNC3(rdev->mddev, rdev);
		if (FUNC9(Faulty, &rdev->flags))
			err = 0;
		else
			err = -EBUSY;
	} else if (FUNC1(buf, "remove")) {
		if (rdev->raid_disk >= 0)
			err = -EBUSY;
		else {
			struct mddev *mddev = rdev->mddev;
			FUNC2(rdev);
			if (mddev->pers)
				FUNC5(mddev, 1);
			FUNC4(mddev);
			err = 0;
		}
	} else if (FUNC1(buf, "writemostly")) {
		FUNC7(WriteMostly, &rdev->flags);
		err = 0;
	} else if (FUNC1(buf, "-writemostly")) {
		FUNC0(WriteMostly, &rdev->flags);
		err = 0;
	} else if (FUNC1(buf, "blocked")) {
		FUNC7(Blocked, &rdev->flags);
		err = 0;
	} else if (FUNC1(buf, "-blocked")) {
		if (!FUNC9(Faulty, &rdev->flags) &&
		    rdev->badblocks.unacked_exist) {
			/* metadata handler doesn't understand badblocks,
			 * so we need to fail the device
			 */
			FUNC3(rdev->mddev, rdev);
		}
		FUNC0(Blocked, &rdev->flags);
		FUNC0(BlockedBadBlocks, &rdev->flags);
		FUNC10(&rdev->blocked_wait);
		FUNC7(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
		FUNC6(rdev->mddev->thread);

		err = 0;
	} else if (FUNC1(buf, "insync") && rdev->raid_disk == -1) {
		FUNC7(In_sync, &rdev->flags);
		err = 0;
	} else if (FUNC1(buf, "write_error")) {
		FUNC7(WriteErrorSeen, &rdev->flags);
		err = 0;
	} else if (FUNC1(buf, "-write_error")) {
		FUNC0(WriteErrorSeen, &rdev->flags);
		err = 0;
	} else if (FUNC1(buf, "want_replacement")) {
		/* Any non-spare device that is not a replacement can
		 * become want_replacement at any time, but we then need to
		 * check if recovery is needed.
		 */
		if (rdev->raid_disk >= 0 &&
		    !FUNC9(Replacement, &rdev->flags))
			FUNC7(WantReplacement, &rdev->flags);
		FUNC7(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
		FUNC6(rdev->mddev->thread);
		err = 0;
	} else if (FUNC1(buf, "-want_replacement")) {
		/* Clearing 'want_replacement' is always allowed.
		 * Once replacements starts it is too late though.
		 */
		err = 0;
		FUNC0(WantReplacement, &rdev->flags);
	} else if (FUNC1(buf, "replacement")) {
		/* Can only set a device as a replacement when array has not
		 * yet been started.  Once running, replacement is automatic
		 * from spares, or by assigning 'slot'.
		 */
		if (rdev->mddev->pers)
			err = -EBUSY;
		else {
			FUNC7(Replacement, &rdev->flags);
			err = 0;
		}
	} else if (FUNC1(buf, "-replacement")) {
		/* Similarly, can only clear Replacement before start */
		if (rdev->mddev->pers)
			err = -EBUSY;
		else {
			FUNC0(Replacement, &rdev->flags);
			err = 0;
		}
	}
	if (!err)
		FUNC8(rdev->sysfs_state);
	return err ? err : len;
}