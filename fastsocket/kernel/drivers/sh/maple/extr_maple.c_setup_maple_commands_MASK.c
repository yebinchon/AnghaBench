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
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct maple_device {scalar_t__ interval; scalar_t__ when; int /*<<< orphan*/  busy; TYPE_1__ devinfo; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAPLE_COMMAND_DEVINFO ; 
 int /*<<< orphan*/  MAPLE_COMMAND_GETCOND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int FUNC3 (struct maple_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ maple_pnp_time ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 struct maple_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *device, void *ignored)
{
	int add;
	struct maple_device *mdev = FUNC5(device);
	if (mdev->interval > 0 && FUNC0(&mdev->busy) == 0 &&
		FUNC4(jiffies, mdev->when)) {
		/* bounce if we cannot add */
		add = FUNC3(mdev,
			FUNC2(mdev->devinfo.function),
			MAPLE_COMMAND_GETCOND, 1, NULL);
		if (!add)
			mdev->when = jiffies + mdev->interval;
	} else {
		if (FUNC4(jiffies, maple_pnp_time))
			/* Ensure we don't have block reads and devinfo
			* calls interfering with one another - so flag the
			* device as busy */
			if (FUNC0(&mdev->busy) == 0) {
				FUNC1(&mdev->busy, 1);
				FUNC3(mdev, 0,
					MAPLE_COMMAND_DEVINFO, 0, NULL);
			}
	}
	return 0;
}