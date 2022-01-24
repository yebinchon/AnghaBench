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
struct i2c_client {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,unsigned char) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC4(struct CHIPSTATE *chip)
{
	struct v4l2_subdev *sd = &chip->sd;
	struct i2c_client *c = FUNC2(sd);
	unsigned char buffer;

	if (1 != FUNC0(c, &buffer, 1)) {
		FUNC3(sd, "I/O error (read)\n");
		return -1;
	}
	FUNC1(1, debug, sd, "chip_read: 0x%x\n", buffer);
	return buffer;
}