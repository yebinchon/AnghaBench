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
struct ccw_device {TYPE_1__* drv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct ccw_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 struct ccw_device* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct ccw_device *cdev;

	cdev = FUNC2(dev);
	if (cdev->drv && cdev->drv->shutdown)
		cdev->drv->shutdown(cdev);
	FUNC0(cdev);
}