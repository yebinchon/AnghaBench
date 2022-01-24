#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_driver {TYPE_2__* bus; TYPE_1__* p; int /*<<< orphan*/  name; int /*<<< orphan*/  suppress_bind_attrs; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  knode_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  driver_attr_uevent ; 
 int /*<<< orphan*/  FUNC1 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct device_driver*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_driver*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_driver*) ; 

void FUNC9(struct device_driver *drv)
{
	if (!drv->bus)
		return;

	if (!drv->suppress_bind_attrs)
		FUNC8(drv);
	FUNC2(drv->bus, drv);
	FUNC3(drv, &driver_attr_uevent);
	FUNC4(&drv->p->knode_bus);
	FUNC7("bus: '%s': remove driver %s\n", drv->bus->name, drv->name);
	FUNC1(drv);
	FUNC6(drv);
	FUNC5(&drv->p->kobj);
	FUNC0(drv->bus);
}