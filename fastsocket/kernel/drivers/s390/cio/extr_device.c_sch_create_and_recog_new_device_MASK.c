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
struct ccw_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel*) ; 
 struct ccw_device* FUNC2 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*,struct subchannel*) ; 

__attribute__((used)) static void FUNC4(struct subchannel *sch)
{
	struct ccw_device *cdev;

	/* Need to allocate a new ccw device. */
	cdev = FUNC2(sch);
	if (FUNC0(cdev)) {
		/* OK, we did everything we could... */
		FUNC1(sch);
		return;
	}
	/* Start recognition for the new ccw device. */
	FUNC3(cdev, sch);
}