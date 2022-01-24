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
 struct ccw_device* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 struct ccw_device* FUNC2 (struct subchannel*) ; 
 int FUNC3 (struct subchannel*,struct ccw_device*) ; 

__attribute__((used)) static struct ccw_device * FUNC4(struct subchannel *sch)
{
	struct ccw_device *cdev;
	int ret;

	cdev = FUNC2(sch);
	if (!FUNC1(cdev)) {
		ret = FUNC3(sch, cdev);
		if (ret)
			cdev = FUNC0(ret);
	}
	return cdev;
}