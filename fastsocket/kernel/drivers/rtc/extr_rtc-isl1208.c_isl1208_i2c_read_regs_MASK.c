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
struct i2c_msg {int member_2; scalar_t__* member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  reg_addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 scalar_t__ ISL1208_REG_USR2 ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int
FUNC2(struct i2c_client *client, u8 reg, u8 buf[],
		      unsigned len)
{
	u8 reg_addr[1] = { reg };
	struct i2c_msg msgs[2] = {
		{client->addr, 0, sizeof(reg_addr), reg_addr}
		,
		{client->addr, I2C_M_RD, len, buf}
	};
	int ret;

	FUNC0(reg > ISL1208_REG_USR2);
	FUNC0(reg + len > ISL1208_REG_USR2 + 1);

	ret = FUNC1(client->adapter, msgs, 2);
	if (ret > 0)
		ret = 0;
	return ret;
}