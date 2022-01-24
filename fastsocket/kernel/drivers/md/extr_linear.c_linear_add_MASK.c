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
struct mddev {int raid_disks; int /*<<< orphan*/  gendisk; int /*<<< orphan*/  array_sectors; int /*<<< orphan*/  private; int /*<<< orphan*/  reconfig_mutex; } ;
struct md_rdev {int saved_raid_disk; int raid_disk; } ;
struct linear_conf {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_conf ; 
 struct linear_conf* FUNC1 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct linear_conf*) ; 
 struct linear_conf* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mddev *mddev, struct md_rdev *rdev)
{
	/* Adding a drive to a linear array allows the array to grow.
	 * It is permitted if the new drive has a matching superblock
	 * already on it, with raid_disk equal to raid_disks.
	 * It is achieved by creating a new linear_private_data structure
	 * and swapping it in in-place of the current one.
	 * The current one is never freed until the array is stopped.
	 * This avoids races.
	 */
	struct linear_conf *newconf, *oldconf;

	if (rdev->saved_raid_disk != mddev->raid_disks)
		return -EINVAL;

	rdev->raid_disk = rdev->saved_raid_disk;
	rdev->saved_raid_disk = -1;

	newconf = FUNC1(mddev,mddev->raid_disks+1);

	if (!newconf)
		return -ENOMEM;

	oldconf = FUNC6(mddev->private,
					    FUNC3(
						    &mddev->reconfig_mutex));
	mddev->raid_disks++;
	FUNC5(mddev->private, newconf);
	FUNC4(mddev, FUNC2(mddev, 0, 0));
	FUNC8(mddev->gendisk, mddev->array_sectors);
	FUNC7(mddev->gendisk);
	FUNC0(&oldconf->rcu, free_conf);
	return 0;
}