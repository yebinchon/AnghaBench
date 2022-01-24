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
typedef  int /*<<< orphan*/  val ;
typedef  char u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_msg {int member_1; int member_2; char* member_3; int /*<<< orphan*/  member_0; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int FUNC0 (struct i2c_msg*) ; 
 int I2C_M_NO_RD_ACK ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  debug ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static u8 FUNC4(struct v4l2_subdev *sd, u8 reg)
{
	struct i2c_client *client = FUNC3(sd);
	char val = 0;
	struct i2c_msg msgs[] = {
		{ client->addr, 0, sizeof(reg), &reg },
		{ client->addr, I2C_M_RD | I2C_M_NO_RD_ACK, sizeof(val), &val }
	};
	int ret;

	ret = FUNC1(client->adapter, msgs, FUNC0(msgs));
	if (ret != FUNC0(msgs))
		FUNC2(1, debug, sd, "read error\n");

	return val;
}