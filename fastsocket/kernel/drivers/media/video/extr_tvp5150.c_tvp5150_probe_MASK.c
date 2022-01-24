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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int enable; int bright; int contrast; int sat; scalar_t__ hue; int /*<<< orphan*/  input; int /*<<< orphan*/  norm; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_READ_BYTE ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 int /*<<< orphan*/  TVP5150_COMPOSITE1 ; 
 int /*<<< orphan*/  TVP5150_LSB_DEV_ID ; 
 int /*<<< orphan*/  TVP5150_MSB_DEV_ID ; 
 int /*<<< orphan*/  TVP5150_REV_SELECT ; 
 int /*<<< orphan*/  TVP5150_ROM_MAJOR_VER ; 
 int /*<<< orphan*/  TVP5150_ROM_MINOR_VER ; 
 int /*<<< orphan*/  V4L2_STD_ALL ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 struct tvp5150* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  tvp5150_ops ; 
 int FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *c,
			 const struct i2c_device_id *id)
{
	struct tvp5150 *core;
	struct v4l2_subdev *sd;
	u8 msb_id, lsb_id, msb_rom, lsb_rom;

	/* Check if the adapter supports the needed features */
	if (!FUNC0(c->adapter,
	     I2C_FUNC_SMBUS_READ_BYTE | I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
		return -EIO;

	core = FUNC1(sizeof(struct tvp5150), GFP_KERNEL);
	if (!core) {
		return -ENOMEM;
	}
	sd = &core->sd;
	FUNC5(sd, c, &tvp5150_ops);
	FUNC7(c, "chip found @ 0x%02x (%s)\n",
		 c->addr << 1, c->adapter->name);

	msb_id = FUNC3(sd, TVP5150_MSB_DEV_ID);
	lsb_id = FUNC3(sd, TVP5150_LSB_DEV_ID);
	msb_rom = FUNC3(sd, TVP5150_ROM_MAJOR_VER);
	lsb_rom = FUNC3(sd, TVP5150_ROM_MINOR_VER);

	if (msb_rom == 4 && lsb_rom == 0) { /* Is TVP5150AM1 */
		FUNC6(sd, "tvp%02x%02xam1 detected.\n", msb_id, lsb_id);

		/* ITU-T BT.656.4 timing */
		FUNC4(sd, TVP5150_REV_SELECT, 0);
	} else {
		if (msb_rom == 3 || lsb_rom == 0x21) { /* Is TVP5150A */
			FUNC6(sd, "tvp%02x%02xa detected.\n", msb_id, lsb_id);
		} else {
			FUNC6(sd, "*** unknown tvp%02x%02x chip detected.\n",
					msb_id, lsb_id);
			FUNC6(sd, "*** Rom ver is %d.%d\n", msb_rom, lsb_rom);
		}
	}

	core->norm = V4L2_STD_ALL;	/* Default is autodetect */
	core->input = TVP5150_COMPOSITE1;
	core->enable = 1;
	core->bright = 128;
	core->contrast = 128;
	core->hue = 0;
	core->sat = 128;

	if (debug > 1)
		FUNC2(sd);
	return 0;
}