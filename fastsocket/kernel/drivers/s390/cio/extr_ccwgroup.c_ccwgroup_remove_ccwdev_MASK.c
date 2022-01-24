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
struct ccwgroup_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  reg_mutex; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccwgroup_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*) ; 
 struct ccwgroup_device* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(struct ccw_device *cdev)
{
	struct ccwgroup_device *gdev;

	/* Ignore offlining errors, device is gone anyway. */
	FUNC2(cdev);
	/* If one of its devices is gone, the whole group is done for. */
	FUNC10(cdev->ccwlock);
	gdev = FUNC3(&cdev->dev);
	if (!gdev) {
		FUNC11(cdev->ccwlock);
		return;
	}
	/* Get ccwgroup device reference for local processing. */
	FUNC6(&gdev->dev);
	FUNC11(cdev->ccwlock);
	/* Unregister group device. */
	FUNC7(&gdev->reg_mutex);
	if (FUNC4(&gdev->dev)) {
		FUNC1(gdev);
		FUNC5(&gdev->dev);
		FUNC0(gdev);
	}
	FUNC8(&gdev->reg_mutex);
	/* Release ccwgroup device reference for local processing. */
	FUNC9(&gdev->dev);
}