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
struct subchannel {int dummy; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ccw_device* FUNC1 (struct subchannel*) ; 

__attribute__((used)) static int FUNC2(struct subchannel *sch)
{
	struct ccw_device *cdev;
	/*
	 * Don't allow suspend while a ccw device registration
	 * is still outstanding.
	 */
	cdev = FUNC1(sch);
	if (cdev && !FUNC0(&cdev->dev))
		return -EAGAIN;
	return 0;
}