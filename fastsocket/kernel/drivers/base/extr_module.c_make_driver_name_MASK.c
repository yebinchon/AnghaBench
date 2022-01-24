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
struct device_driver {char* name; TYPE_1__* bus; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(struct device_driver *drv)
{
	char *driver_name;

	driver_name = FUNC0(FUNC2(drv->name) + FUNC2(drv->bus->name) + 2,
			      GFP_KERNEL);
	if (!driver_name)
		return NULL;

	FUNC1(driver_name, "%s:%s", drv->bus->name, drv->name);
	return driver_name;
}