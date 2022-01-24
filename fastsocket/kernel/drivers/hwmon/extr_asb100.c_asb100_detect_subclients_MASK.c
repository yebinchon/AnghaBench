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
struct i2c_client {int addr; int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct asb100_data {void** lm75; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASB100_REG_I2C_SUBADDR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int* force_subclients ; 
 int FUNC3 (struct i2c_adapter*) ; 
 struct asb100_data* FUNC4 (struct i2c_client*) ; 
 void* FUNC5 (struct i2c_adapter*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	int i, id, err;
	int address = client->addr;
	unsigned short sc_addr[2];
	struct asb100_data *data = FUNC4(client);
	struct i2c_adapter *adapter = client->adapter;

	id = FUNC3(adapter);

	if (force_subclients[0] == id && force_subclients[1] == address) {
		for (i = 2; i <= 3; i++) {
			if (force_subclients[i] < 0x48 ||
			    force_subclients[i] > 0x4f) {
				FUNC2(&client->dev, "invalid subclient "
					"address %d; must be 0x48-0x4f\n",
					force_subclients[i]);
				err = -ENODEV;
				goto ERROR_SC_2;
			}
		}
		FUNC1(client, ASB100_REG_I2C_SUBADDR,
					(force_subclients[2] & 0x07) |
					((force_subclients[3] & 0x07) << 4));
		sc_addr[0] = force_subclients[2];
		sc_addr[1] = force_subclients[3];
	} else {
		int val = FUNC0(client, ASB100_REG_I2C_SUBADDR);
		sc_addr[0] = 0x48 + (val & 0x07);
		sc_addr[1] = 0x48 + ((val >> 4) & 0x07);
	}

	if (sc_addr[0] == sc_addr[1]) {
		FUNC2(&client->dev, "duplicate addresses 0x%x "
				"for subclients\n", sc_addr[0]);
		err = -ENODEV;
		goto ERROR_SC_2;
	}

	data->lm75[0] = FUNC5(adapter, sc_addr[0]);
	if (!data->lm75[0]) {
		FUNC2(&client->dev, "subclient %d registration "
			"at address 0x%x failed.\n", 1, sc_addr[0]);
		err = -ENOMEM;
		goto ERROR_SC_2;
	}

	data->lm75[1] = FUNC5(adapter, sc_addr[1]);
	if (!data->lm75[1]) {
		FUNC2(&client->dev, "subclient %d registration "
			"at address 0x%x failed.\n", 2, sc_addr[1]);
		err = -ENOMEM;
		goto ERROR_SC_3;
	}

	return 0;

/* Undo inits in case of errors */
ERROR_SC_3:
	FUNC6(data->lm75[0]);
ERROR_SC_2:
	return err;
}