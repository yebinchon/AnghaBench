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
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {struct ccw_device* private; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ccw_device* FUNC2 (struct device*) ; 

__attribute__((used)) static void
FUNC3(struct device *dev)
{
	struct ccw_device *cdev;

	cdev = FUNC2(dev);
	/* Release reference of parent subchannel. */
	FUNC1(cdev->dev.parent);
	FUNC0(cdev->private);
	FUNC0(cdev);
}