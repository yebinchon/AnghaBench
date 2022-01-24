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
struct i2c_msg {int member_0; int member_2; unsigned char* member_3; int /*<<< orphan*/  member_1; } ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,char*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, int addr, int reg)
{
	unsigned char write[1];
	unsigned char read[1];
	struct i2c_msg msgs[2] = {
		{ addr, 0,        1, write },
		{ addr, I2C_M_RD, 1, read  }
	};

	write[0] = reg;

	if (2 != FUNC0(client->adapter, msgs, 2)) {
		FUNC2(client, "I/O error (read2)\n");
		return -1;
	}
	FUNC1(1, debug, client, "chip_read2: reg%d=0x%x\n", reg, read[0]);
	return read[0];
}