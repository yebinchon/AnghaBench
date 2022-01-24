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
struct TYPE_4__ {int offset; } ;
struct mddev {TYPE_1__ bitmap_info; int /*<<< orphan*/  events; } ;
struct md_rdev {int /*<<< orphan*/  flags; int /*<<< orphan*/  recovery_offset; int /*<<< orphan*/  raid_disk; int /*<<< orphan*/  saved_raid_disk; TYPE_3__* mddev; int /*<<< orphan*/  sb_page; } ;
struct dm_raid_superblock {int /*<<< orphan*/  disk_recovery_offset; } ;
struct TYPE_5__ {int default_offset; } ;
struct TYPE_6__ {TYPE_2__ bitmap_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  FirstUse ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MaxSector ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dm_raid_superblock* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mddev*,struct md_rdev*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mddev *mddev, struct md_rdev *rdev)
{
	struct dm_raid_superblock *sb = FUNC2(rdev->sb_page);

	/*
	 * If mddev->events is not set, we know we have not yet initialized
	 * the array.
	 */
	if (!mddev->events && FUNC3(mddev, rdev))
		return -EINVAL;

	mddev->bitmap_info.offset = 4096 >> 9; /* Enable bitmap creation */
	rdev->mddev->bitmap_info.default_offset = 4096 >> 9;
	if (!FUNC4(FirstUse, &rdev->flags)) {
		rdev->recovery_offset = FUNC1(sb->disk_recovery_offset);
		if (rdev->recovery_offset != MaxSector)
			FUNC0(In_sync, &rdev->flags);
	}

	/*
	 * If a device comes back, set it as not In_sync and no longer faulty.
	 */
	if (FUNC4(Faulty, &rdev->flags)) {
		FUNC0(Faulty, &rdev->flags);
		FUNC0(In_sync, &rdev->flags);
		rdev->saved_raid_disk = rdev->raid_disk;
		rdev->recovery_offset = 0;
	}

	FUNC0(FirstUse, &rdev->flags);

	return 0;
}