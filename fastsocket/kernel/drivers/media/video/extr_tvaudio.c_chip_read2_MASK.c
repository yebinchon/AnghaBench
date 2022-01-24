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
struct i2c_msg {int member_2; unsigned char* member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,unsigned char) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC4(struct CHIPSTATE *chip, int subaddr)
{
	struct v4l2_subdev *sd = &chip->sd;
	struct i2c_client *c = FUNC2(sd);
	unsigned char write[1];
	unsigned char read[1];
	struct i2c_msg msgs[2] = {
		{ c->addr, 0,        1, write },
		{ c->addr, I2C_M_RD, 1, read  }
	};

	write[0] = subaddr;

	if (2 != FUNC0(c->adapter, msgs, 2)) {
		FUNC3(sd, "I/O error (read2)\n");
		return -1;
	}
	FUNC1(1, debug, sd, "chip_read2: reg%d=0x%x\n",
		subaddr, read[0]);
	return read[0];
}