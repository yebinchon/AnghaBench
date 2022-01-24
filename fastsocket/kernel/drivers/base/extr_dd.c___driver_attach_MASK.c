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
struct device_driver {int dummy; } ;
struct device {TYPE_1__* parent; int /*<<< orphan*/  sem; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device_driver*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_driver*,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct device_driver *drv = data;

	/*
	 * Lock device and try to bind to it. We drop the error
	 * here and always return 0, because we need to keep trying
	 * to bind to devices and some drivers will return an error
	 * simply if it didn't support the device.
	 *
	 * driver_probe_device() will spit a warning if there
	 * is an error.
	 */

	if (!FUNC1(drv, dev))
		return 0;

	if (dev->parent)	/* Needed for USB */
		FUNC0(&dev->parent->sem);
	FUNC0(&dev->sem);
	if (!dev->driver)
		FUNC2(drv, dev);
	FUNC3(&dev->sem);
	if (dev->parent)
		FUNC3(&dev->parent->sem);

	return 0;
}