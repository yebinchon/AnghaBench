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
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ccwgroup_driver {scalar_t__ driver_id; } ;
struct ccwgroup_device {scalar_t__ creator_id; } ;

/* Variables and functions */
 struct ccwgroup_device* FUNC0 (struct device*) ; 
 struct ccwgroup_driver* FUNC1 (struct device_driver*) ; 

__attribute__((used)) static int
FUNC2 (struct device * dev, struct device_driver * drv)
{
	struct ccwgroup_device *gdev;
	struct ccwgroup_driver *gdrv;

	gdev = FUNC0(dev);
	gdrv = FUNC1(drv);

	if (gdev->creator_id == gdrv->driver_id)
		return 1;

	return 0;
}