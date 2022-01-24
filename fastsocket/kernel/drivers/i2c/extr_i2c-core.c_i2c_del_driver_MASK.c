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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct i2c_driver {TYPE_1__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  __detach_adapter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct i2c_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  i2c_bus_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct i2c_driver *driver)
{
	FUNC2(&core_lock);
	FUNC0(&i2c_bus_type, NULL, driver, __detach_adapter);
	FUNC3(&core_lock);

	FUNC1(&driver->driver);
	FUNC4("i2c-core: driver [%s] unregistered\n", driver->driver.name);
}