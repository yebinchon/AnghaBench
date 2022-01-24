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
struct i2c_driver {int /*<<< orphan*/  (* attach_adapter ) (struct i2c_adapter*) ;} ;
struct i2c_adapter {int dummy; } ;
struct device {int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  i2c_adapter_type ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,struct i2c_driver*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*) ; 
 struct i2c_adapter* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct i2c_adapter *adapter;
	struct i2c_driver *driver = data;

	if (dev->type != &i2c_adapter_type)
		return 0;
	adapter = FUNC2(dev);

	FUNC0(adapter, driver);

	/* Legacy drivers scan i2c busses directly */
	if (driver->attach_adapter)
		driver->attach_adapter(adapter);

	return 0;
}