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
struct md_rdev {int sb_loaded; int /*<<< orphan*/  mddev; int /*<<< orphan*/  raid_disk; int /*<<< orphan*/  sb_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct md_rdev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct md_rdev *rdev, int size)
{
	FUNC0(!rdev->sb_page);

	if (rdev->sb_loaded)
		return 0;

	if (!FUNC3(rdev, 0, size, rdev->sb_page, READ, 1)) {
		FUNC1("Failed to read superblock of device at position %d",
		      rdev->raid_disk);
		FUNC2(rdev->mddev, rdev);
		return -EINVAL;
	}

	rdev->sb_loaded = 1;

	return 0;
}