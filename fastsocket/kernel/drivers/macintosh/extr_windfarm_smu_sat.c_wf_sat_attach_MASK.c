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
struct pmac_i2c_bus {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 struct pmac_i2c_bus* FUNC2 (struct i2c_adapter*) ; 
 struct device_node* FUNC3 (struct pmac_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,struct device_node*) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adapter)
{
	struct device_node *busnode, *dev = NULL;
	struct pmac_i2c_bus *bus;

	bus = FUNC2(adapter);
	if (bus == NULL)
		return -ENODEV;
	busnode = FUNC3(bus);

	while ((dev = FUNC1(busnode, dev)) != NULL)
		if (FUNC0(dev, "smu-sat"))
			FUNC4(adapter, dev);
	return 0;
}