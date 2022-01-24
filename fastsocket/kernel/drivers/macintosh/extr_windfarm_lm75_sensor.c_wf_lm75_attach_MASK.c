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
struct i2c_adapter {int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 
 struct device_node* FUNC2 (struct device_node*,struct device_node*) ; 
 char* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct pmac_i2c_bus* FUNC4 (struct i2c_adapter*) ; 
 struct device_node* FUNC5 (struct pmac_i2c_bus*) ; 
 scalar_t__ FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,scalar_t__,int,char const*) ; 

__attribute__((used)) static int FUNC9(struct i2c_adapter *adapter)
{
	struct device_node *busnode, *dev;
	struct pmac_i2c_bus *bus;

	FUNC0("wf_lm75: adapter %s detected\n", adapter->name);

	bus = FUNC4(adapter);
	if (bus == NULL)
		return -ENODEV;
	busnode = FUNC5(bus);

	FUNC0("wf_lm75: bus found, looking for device...\n");

	/* Now look for lm75(s) in there */
	for (dev = NULL;
	     (dev = FUNC2(busnode, dev)) != NULL;) {
		const char *loc =
			FUNC3(dev, "hwsensor-location", NULL);
		u8 addr;

		/* We must re-match the adapter in order to properly check
		 * the channel on multibus setups
		 */
		if (!FUNC7(dev, adapter))
			continue;
		addr = FUNC6(dev);
		if (loc == NULL || addr == 0)
			continue;
		/* real lm75 */
		if (FUNC1(dev, "lm75"))
			FUNC8(adapter, addr, 0, loc);
		/* ds1775 (compatible, better resolution */
		else if (FUNC1(dev, "ds1775"))
			FUNC8(adapter, addr, 1, loc);
	}
	return 0;
}