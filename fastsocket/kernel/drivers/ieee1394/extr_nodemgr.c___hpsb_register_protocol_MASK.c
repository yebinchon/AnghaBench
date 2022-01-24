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
struct module {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; struct module* owner; int /*<<< orphan*/ * bus; } ;
struct hpsb_protocol_driver {TYPE_1__ driver; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ieee1394_bus_type ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_protocol_driver*) ; 

int FUNC2(struct hpsb_protocol_driver *drv,
			     struct module *owner)
{
	int error;

	drv->driver.bus = &ieee1394_bus_type;
	drv->driver.owner = owner;
	drv->driver.name = drv->name;

	/* This will cause a probe for devices */
	error = FUNC0(&drv->driver);
	if (!error)
		FUNC1(drv);
	return error;
}