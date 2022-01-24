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
struct i2c_driver {scalar_t__ id_table; } ;
struct i2c_client {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct device*) ; 
 struct i2c_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct i2c_client	*client = FUNC1(dev);
	struct i2c_driver	*driver;

	if (!client)
		return 0;

	driver = FUNC2(drv);
	/* match on an id table if there is one */
	if (driver->id_table)
		return FUNC0(driver->id_table, client) != NULL;

	return 0;
}