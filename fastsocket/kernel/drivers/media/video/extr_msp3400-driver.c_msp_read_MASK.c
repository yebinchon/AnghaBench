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
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  msp_debug ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,char*,...) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, int dev, int addr)
{
	int err, retval;
	u8 write[3];
	u8 read[2];
	struct i2c_msg msgs[2] = {
		{ client->addr, 0,        3, write },
		{ client->addr, &I2C_M_RD, 2, read  }
	};

	write[0] = dev + 1;
	write[1] = addr >> 8;
	write[2] = addr & 0xff;

	for (err = 0; err < 3; err++) {
		if (FUNC0(client->adapter, msgs, 2) == 2)
			break;
		FUNC5(client, "I/O error #%d (read 0x%02x/0x%02x)\n", err,
		       dev, addr);
		FUNC3(FUNC1(10));
	}
	if (err == 3) {
		FUNC5(client, "resetting chip, sound will go off.\n");
		FUNC2(client);
		return -1;
	}
	retval = read[0] << 8 | read[1];
	FUNC4(3, msp_debug, client, "msp_read(0x%x, 0x%x): 0x%x\n",
			dev, addr, retval);
	return retval;
}