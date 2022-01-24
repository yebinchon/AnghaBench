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
struct ccw_device {int /*<<< orphan*/  ccwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ timeout_log_enabled ; 

__attribute__((used)) static void
FUNC4(unsigned long data)
{
	struct ccw_device *cdev;

	cdev = (struct ccw_device *) data;
	FUNC2(cdev->ccwlock);
	if (timeout_log_enabled)
		FUNC0(cdev);
	FUNC1(cdev, DEV_EVENT_TIMEOUT);
	FUNC3(cdev->ccwlock);
}