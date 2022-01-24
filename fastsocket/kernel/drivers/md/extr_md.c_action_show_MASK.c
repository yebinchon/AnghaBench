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
struct mddev {int /*<<< orphan*/  recovery; int /*<<< orphan*/  ro; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_CHECK ; 
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_RECOVERY_RECOVER ; 
 int /*<<< orphan*/  MD_RECOVERY_REQUESTED ; 
 int /*<<< orphan*/  MD_RECOVERY_RESHAPE ; 
 int /*<<< orphan*/  MD_RECOVERY_RUNNING ; 
 int /*<<< orphan*/  MD_RECOVERY_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC2(struct mddev *mddev, char *page)
{
	char *type = "idle";
	if (FUNC1(MD_RECOVERY_FROZEN, &mddev->recovery))
		type = "frozen";
	else if (FUNC1(MD_RECOVERY_RUNNING, &mddev->recovery) ||
	    (!mddev->ro && FUNC1(MD_RECOVERY_NEEDED, &mddev->recovery))) {
		if (FUNC1(MD_RECOVERY_RESHAPE, &mddev->recovery))
			type = "reshape";
		else if (FUNC1(MD_RECOVERY_SYNC, &mddev->recovery)) {
			if (!FUNC1(MD_RECOVERY_REQUESTED, &mddev->recovery))
				type = "resync";
			else if (FUNC1(MD_RECOVERY_CHECK, &mddev->recovery))
				type = "check";
			else
				type = "repair";
		} else if (FUNC1(MD_RECOVERY_RECOVER, &mddev->recovery))
			type = "recover";
	}
	return FUNC0(page, "%s\n", type);
}