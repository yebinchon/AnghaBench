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
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  owner; int /*<<< orphan*/ * bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct pcmcia_driver {TYPE_2__ drv; TYPE_1__ dynids; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcmcia_bus_type ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_driver*) ; 
 int FUNC5 (struct pcmcia_driver*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct pcmcia_driver *driver)
{
	int error;

	if (!driver)
		return -EINVAL;

	FUNC4(driver);

	/* initialize common fields */
	driver->drv.bus = &pcmcia_bus_type;
	driver->drv.owner = driver->owner;
	FUNC6(&driver->dynids.lock);
	FUNC0(&driver->dynids.list);

	FUNC3(3, "registering driver %s\n", driver->drv.name);

	error = FUNC1(&driver->drv);
	if (error < 0)
		return error;

	error = FUNC5(driver);
	if (error)
		FUNC2(&driver->drv);

	return error;
}