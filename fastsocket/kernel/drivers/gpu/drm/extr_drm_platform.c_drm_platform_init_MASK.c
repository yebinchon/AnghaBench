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
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct platform_device* platform_device; } ;
struct drm_driver {int /*<<< orphan*/  device_list; int /*<<< orphan*/ * bus; TYPE_1__ kdriver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct platform_device*,struct drm_driver*) ; 
 int /*<<< orphan*/  drm_platform_bus ; 

int FUNC3(struct drm_driver *driver, struct platform_device *platform_device)
{
	FUNC0("\n");

	driver->kdriver.platform_device = platform_device;
	driver->bus = &drm_platform_bus;
	FUNC1(&driver->device_list);
	return FUNC2(platform_device, driver);
}