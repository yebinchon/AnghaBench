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
struct mddev {int curr_resync; unsigned long long resync_max_sectors; unsigned long long dev_sectors; unsigned long long curr_resync_completed; int /*<<< orphan*/  recovery; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_RESHAPE ; 
 int /*<<< orphan*/  MD_RECOVERY_RUNNING ; 
 int /*<<< orphan*/  MD_RECOVERY_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC2(struct mddev *mddev, char *page)
{
	unsigned long long max_sectors, resync;

	if (!FUNC1(MD_RECOVERY_RUNNING, &mddev->recovery))
		return FUNC0(page, "none\n");

	if (mddev->curr_resync == 1 ||
	    mddev->curr_resync == 2)
		return FUNC0(page, "delayed\n");

	if (FUNC1(MD_RECOVERY_SYNC, &mddev->recovery) ||
	    FUNC1(MD_RECOVERY_RESHAPE, &mddev->recovery))
		max_sectors = mddev->resync_max_sectors;
	else
		max_sectors = mddev->dev_sectors;

	resync = mddev->curr_resync_completed;
	return FUNC0(page, "%llu / %llu\n", resync, max_sectors);
}