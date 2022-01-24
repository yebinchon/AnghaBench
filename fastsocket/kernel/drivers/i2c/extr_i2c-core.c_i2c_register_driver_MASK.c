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
struct module {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; TYPE_1__* bus; struct module* owner; } ;
struct i2c_driver {int /*<<< orphan*/  clients; TYPE_2__ driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  __attach_adapter ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,struct i2c_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core_lock ; 
 int FUNC3 (TYPE_2__*) ; 
 TYPE_1__ i2c_bus_type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct module *owner, struct i2c_driver *driver)
{
	int res;

	/* Can't register until after driver model init */
	if (FUNC7(FUNC1(!i2c_bus_type.p)))
		return -EAGAIN;

	/* add the driver to the list of i2c drivers in the driver core */
	driver->driver.owner = owner;
	driver->driver.bus = &i2c_bus_type;

	/* When registration returns, the driver core
	 * will have called probe() for all matching-but-unbound devices.
	 */
	res = FUNC3(&driver->driver);
	if (res)
		return res;

	FUNC6("i2c-core: driver [%s] registered\n", driver->driver.name);

	FUNC0(&driver->clients);
	/* Walk the adapters that are already present */
	FUNC4(&core_lock);
	FUNC2(&i2c_bus_type, NULL, driver, __attach_adapter);
	FUNC5(&core_lock);

	return 0;
}