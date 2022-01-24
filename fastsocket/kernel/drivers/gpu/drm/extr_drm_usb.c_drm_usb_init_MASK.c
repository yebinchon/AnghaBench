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
struct usb_driver {int dummy; } ;
struct TYPE_2__ {struct usb_driver* usb; } ;
struct drm_driver {int /*<<< orphan*/ * bus; TYPE_1__ kdriver; int /*<<< orphan*/  device_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drm_usb_bus ; 
 int FUNC2 (struct usb_driver*) ; 

int FUNC3(struct drm_driver *driver, struct usb_driver *udriver)
{
	int res;
	FUNC0("\n");

	FUNC1(&driver->device_list);
	driver->kdriver.usb = udriver;
	driver->bus = &drm_usb_bus;

	res = FUNC2(udriver);
	return res;
}