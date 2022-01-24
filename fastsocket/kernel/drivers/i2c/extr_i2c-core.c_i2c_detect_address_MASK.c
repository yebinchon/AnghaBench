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
struct TYPE_2__ {char* name; } ;
struct i2c_driver {int (* detect ) (struct i2c_client*,int,struct i2c_board_info*) ;int /*<<< orphan*/  clients; TYPE_1__ driver; } ;
struct i2c_client {int addr; int /*<<< orphan*/  detected; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int addr; char* type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_SMBUS_QUICK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (struct i2c_adapter*,int) ; 
 struct i2c_client* FUNC4 (struct i2c_adapter*,struct i2c_board_info*) ; 
 scalar_t__ FUNC5 (struct i2c_adapter*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct i2c_client*,int,struct i2c_board_info*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *temp_client, int kind,
			      struct i2c_driver *driver)
{
	struct i2c_board_info info;
	struct i2c_adapter *adapter = temp_client->adapter;
	int addr = temp_client->addr;
	int err;

	/* Make sure the address is valid */
	if (addr < 0x03 || addr > 0x77) {
		FUNC2(&adapter->dev, "Invalid probe address 0x%02x\n",
			 addr);
		return -EINVAL;
	}

	/* Skip if already in use */
	if (FUNC3(adapter, addr))
		return 0;

	/* Make sure there is something at this address, unless forced */
	if (kind < 0) {
		if (FUNC5(adapter, addr, 0, 0, 0,
				   I2C_SMBUS_QUICK, NULL) < 0)
			return 0;

		/* prevent 24RF08 corruption */
		if ((addr & ~0x0f) == 0x50)
			FUNC5(adapter, addr, 0, 0, 0,
				       I2C_SMBUS_QUICK, NULL);
	}

	/* Finally call the custom detection function */
	FUNC7(&info, 0, sizeof(struct i2c_board_info));
	info.addr = addr;
	err = driver->detect(temp_client, kind, &info);
	if (err) {
		/* -ENODEV is returned if the detection fails. We catch it
		   here as this isn't an error. */
		return err == -ENODEV ? 0 : err;
	}

	/* Consistency check */
	if (info.type[0] == '\0') {
		FUNC1(&adapter->dev, "%s detection function provided "
			"no name for 0x%x\n", driver->driver.name,
			addr);
	} else {
		struct i2c_client *client;

		/* Detection succeeded, instantiate the device */
		FUNC0(&adapter->dev, "Creating %s at 0x%02x\n",
			info.type, info.addr);
		client = FUNC4(adapter, &info);
		if (client)
			FUNC6(&client->detected, &driver->clients);
		else
			FUNC1(&adapter->dev, "Failed creating %s at 0x%02x\n",
				info.type, info.addr);
	}
	return 0;
}