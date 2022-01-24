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
typedef  scalar_t__ u8 ;
struct pmac_i2c_bus {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*) ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 char* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct pmac_i2c_bus* FUNC3 (struct i2c_adapter*) ; 
 struct device_node* FUNC4 (struct pmac_i2c_bus*) ; 
 scalar_t__ FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,scalar_t__,char const*) ; 

__attribute__((used)) static int FUNC9(struct i2c_adapter *adapter)
{
	struct device_node *busnode, *dev = NULL;
	struct pmac_i2c_bus *bus;
	const char *loc;

	bus = FUNC3(adapter);
	if (bus == NULL)
		return -ENODEV;
	busnode = FUNC4(bus);

	while ((dev = FUNC1(busnode, dev)) != NULL) {
		u8 addr;

		/* We must re-match the adapter in order to properly check
		 * the channel on multibus setups
		 */
		if (!FUNC6(dev, adapter))
			continue;
		if (!FUNC0(dev, "max6690"))
			continue;
		addr = FUNC5(dev);
		loc = FUNC2(dev, "hwsensor-location", NULL);
		if (loc == NULL || addr == 0)
			continue;
		FUNC7("found max6690, loc=%s addr=0x%02x\n", loc, addr);
		FUNC8(adapter, addr, loc);
	}

	return 0;
}