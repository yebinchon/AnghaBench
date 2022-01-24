#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;
struct mt9v011 {int global_gain; int width; int height; int xtal; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_READ_BYTE ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 scalar_t__ MT9V011_REV_B_VERSION ; 
 scalar_t__ MT9V011_VERSION ; 
 int /*<<< orphan*/  R00_MT9V011_CHIP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt9v011*) ; 
 struct mt9v011* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt9v011_ops ; 
 scalar_t__ FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,char*,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *c,
			 const struct i2c_device_id *id)
{
	u16 version;
	struct mt9v011 *core;
	struct v4l2_subdev *sd;

	/* Check if the adapter supports the needed features */
	if (!FUNC0(c->adapter,
	     I2C_FUNC_SMBUS_READ_BYTE | I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
		return -EIO;

	core = FUNC2(sizeof(struct mt9v011), GFP_KERNEL);
	if (!core)
		return -ENOMEM;

	sd = &core->sd;
	FUNC4(sd, c, &mt9v011_ops);

	/* Check if the sensor is really a MT9V011 */
	version = FUNC3(sd, R00_MT9V011_CHIP_VERSION);
	if ((version != MT9V011_VERSION) &&
	    (version != MT9V011_REV_B_VERSION)) {
		FUNC5(sd, "*** unknown micron chip detected (0x%04x).\n",
			  version);
		FUNC1(core);
		return -EINVAL;
	}

	core->global_gain = 0x0024;
	core->width  = 640;
	core->height = 480;
	core->xtal = 27000000;	/* Hz */

	FUNC6(c, "chip found @ 0x%02x (%s - chip version 0x%04x)\n",
		 c->addr << 1, c->adapter->name, version);

	return 0;
}