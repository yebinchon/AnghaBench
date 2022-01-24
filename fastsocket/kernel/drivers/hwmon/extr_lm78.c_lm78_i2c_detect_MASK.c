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
struct lm78_data {int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int LM78_REG_CHIPID ; 
 int LM78_REG_CONFIG ; 
 int LM78_REG_I2C_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int) ; 
 int lm78 ; 
 scalar_t__ FUNC5 (struct i2c_client*,int) ; 
 struct lm78_data* FUNC6 () ; 
#define  lm79 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client, int kind,
			   struct i2c_board_info *info)
{
	int i;
	struct lm78_data *isa = FUNC6();
	const char *client_name;
	struct i2c_adapter *adapter = client->adapter;
	int address = client->addr;

	if (!FUNC3(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/* We block updates of the ISA device to minimize the risk of
	   concurrent access to the same LM78 chip through different
	   interfaces. */
	if (isa)
		FUNC7(&isa->update_lock);

	if (kind < 0) {
		if ((FUNC4(client, LM78_REG_CONFIG) & 0x80)
		 || FUNC4(client, LM78_REG_I2C_ADDR)
		    != address)
			goto err_nodev;

		/* Explicitly prevent the misdetection of Winbond chips */
		i = FUNC4(client, 0x4f);
		if (i == 0xa3 || i == 0x5c)
			goto err_nodev;
	}

	/* Determine the chip type. */
	if (kind <= 0) {
		i = FUNC4(client, LM78_REG_CHIPID);
		if (i == 0x00 || i == 0x20	/* LM78 */
		 || i == 0x40)			/* LM78-J */
			kind = lm78;
		else if ((i & 0xfe) == 0xc0)
			kind = lm79;
		else {
			if (kind == 0)
				FUNC1(&adapter->dev, "Ignoring 'force' "
					"parameter for unknown chip at "
					"adapter %d, address 0x%02x\n",
					FUNC2(adapter), address);
			goto err_nodev;
		}

		if (FUNC5(client, i)) {
			FUNC0(&adapter->dev, "Device at 0x%02x appears to "
				"be the same as ISA device\n", address);
			goto err_nodev;
		}
	}

	if (isa)
		FUNC8(&isa->update_lock);

	switch (kind) {
	case lm79:
		client_name = "lm79";
		break;
	default:
		client_name = "lm78";
	}
	FUNC9(info->type, client_name, I2C_NAME_SIZE);

	return 0;

 err_nodev:
	if (isa)
		FUNC8(&isa->update_lock);
	return -ENODEV;
}