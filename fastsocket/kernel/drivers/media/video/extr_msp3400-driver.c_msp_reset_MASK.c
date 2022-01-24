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
typedef  int u8 ;
struct i2c_msg {int member_2; int* member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
#define  I2C_MSP_CONTROL 129 
#define  I2C_MSP_DSP 128 
 int /*<<< orphan*/  I2C_M_IGNORE_NAK ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  msp_debug ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,char*) ; 

int FUNC3(struct i2c_client *client)
{
	/* reset and read revision code */
	static u8 reset_off[3] = { I2C_MSP_CONTROL, 0x80, 0x00 };
	static u8 reset_on[3]  = { I2C_MSP_CONTROL, 0x00, 0x00 };
	static u8 write[3]     = { I2C_MSP_DSP + 1, 0x00, 0x1e };
	u8 read[2];
	struct i2c_msg reset[2] = {
		{ client->addr, &I2C_M_IGNORE_NAK, 3, reset_off },
		{ client->addr, &I2C_M_IGNORE_NAK, 3, reset_on  },
	};
	struct i2c_msg test[2] = {
		{ client->addr, 0,        3, write },
		{ client->addr, &I2C_M_RD, 2, read  },
	};

	FUNC1(3, msp_debug, client, "msp_reset\n");
	if (FUNC0(client->adapter, &reset[0], 1) != 1 ||
	    FUNC0(client->adapter, &reset[1], 1) != 1 ||
	    FUNC0(client->adapter, test, 2) != 2) {
		FUNC2(client, "chip reset failed\n");
		return -1;
	}
	return 0;
}