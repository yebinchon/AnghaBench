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
struct ccw_driver {int /*<<< orphan*/  driver; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ccwdev_check_busid ; 
 struct device* FUNC0 (struct device_driver*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 struct device_driver* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_driver*) ; 
 struct ccw_device* FUNC3 (struct device*) ; 

struct ccw_device *FUNC4(struct ccw_driver *cdrv,
				       const char *bus_id)
{
	struct device *dev;
	struct device_driver *drv;

	drv = FUNC1(&cdrv->driver);
	if (!drv)
		return NULL;

	dev = FUNC0(drv, NULL, (void *)bus_id,
				 __ccwdev_check_busid);
	FUNC2(drv);

	return dev ? FUNC3(dev) : NULL;
}