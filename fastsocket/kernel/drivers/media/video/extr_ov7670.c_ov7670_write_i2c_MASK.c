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
struct v4l2_subdev {int dummy; } ;
struct i2c_msg {int len; unsigned char* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 unsigned char COM7_RESET ; 
 unsigned char REG_COM7 ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, unsigned char reg,
		unsigned char value)
{
	struct i2c_client *client = FUNC2(sd);
	struct i2c_msg msg;
	unsigned char data[2] = { reg, value };
	int ret;

	msg.addr = client->addr;
	msg.flags = 0;
	msg.len = 2;
	msg.buf = data;
	ret = FUNC0(client->adapter, &msg, 1);
	if (ret > 0)
		ret = 0;
	if (reg == REG_COM7 && (value & COM7_RESET))
		FUNC1(5);  /* Wait for reset to run */
	return ret;
}