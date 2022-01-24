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
typedef  scalar_t__ uint64_t ;
struct md_rdev {int sb_size; int /*<<< orphan*/  sb_page; TYPE_1__* mddev; int /*<<< orphan*/  flags; int /*<<< orphan*/  recovery_offset; scalar_t__ sb_start; } ;
struct dm_raid_superblock {scalar_t__ magic; int /*<<< orphan*/  events; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_RAID_MAGIC ; 
 int /*<<< orphan*/  FirstUse ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_CHANGE_DEVS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct dm_raid_superblock* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct md_rdev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct md_rdev *rdev, struct md_rdev *refdev)
{
	int ret;
	struct dm_raid_superblock *sb;
	struct dm_raid_superblock *refsb;
	uint64_t events_sb, events_refsb;

	rdev->sb_start = 0;
	rdev->sb_size = sizeof(*sb);

	ret = FUNC3(rdev, rdev->sb_size);
	if (ret)
		return ret;

	sb = FUNC2(rdev->sb_page);

	/*
	 * Two cases that we want to write new superblocks and rebuild:
	 * 1) New device (no matching magic number)
	 * 2) Device specified for rebuild (!In_sync w/ offset == 0)
	 */
	if ((sb->magic != FUNC0(DM_RAID_MAGIC)) ||
	    (!FUNC6(In_sync, &rdev->flags) && !rdev->recovery_offset)) {
		FUNC5(rdev->mddev, rdev);

		FUNC4(FirstUse, &rdev->flags);

		/* Force writing of superblocks to disk */
		FUNC4(MD_CHANGE_DEVS, &rdev->mddev->flags);

		/* Any superblock is better than none, choose that if given */
		return refdev ? 0 : 1;
	}

	if (!refdev)
		return 1;

	events_sb = FUNC1(sb->events);

	refsb = FUNC2(refdev->sb_page);
	events_refsb = FUNC1(refsb->events);

	return (events_sb > events_refsb) ? 1 : 0;
}