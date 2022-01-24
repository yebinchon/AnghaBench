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
struct i2c_client {int addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *c)
{
	struct v4l2_subdev *sd = FUNC0(c);

	FUNC3(1, debug, sd,
		"mt9v011.c: removing mt9v011 adapter on address 0x%x\n",
		c->addr << 1);

	FUNC4(sd);
	FUNC1(FUNC2(sd));
	return 0;
}