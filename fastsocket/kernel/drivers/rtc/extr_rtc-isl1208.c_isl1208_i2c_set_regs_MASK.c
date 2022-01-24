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
struct i2c_msg {int* member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ISL1208_REG_USR2 ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,unsigned int) ; 

__attribute__((used)) static int
FUNC3(struct i2c_client *client, u8 reg, u8 const buf[],
		     unsigned len)
{
	u8 i2c_buf[ISL1208_REG_USR2 + 2];
	struct i2c_msg msgs[1] = {
		{&client->addr, 0, len + 1, i2c_buf}
	};
	int ret;

	FUNC0(reg > ISL1208_REG_USR2);
	FUNC0(reg + len > ISL1208_REG_USR2 + 1);

	i2c_buf[0] = reg;
	FUNC2(&i2c_buf[1], &buf[0], len);

	ret = FUNC1(client->adapter, msgs, 1);
	if (ret > 0)
		ret = 0;
	return ret;
}