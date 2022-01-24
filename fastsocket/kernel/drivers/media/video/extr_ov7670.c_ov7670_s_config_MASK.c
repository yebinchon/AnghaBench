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
struct v4l2_subdev {int dummy; } ;
struct ov7670_info {int clock_speed; int sat; int clkrc; int /*<<< orphan*/ * fmt; int /*<<< orphan*/  use_smbus; int /*<<< orphan*/  min_height; int /*<<< orphan*/  min_width; } ;
struct ov7670_config {int clock_speed; int /*<<< orphan*/  use_smbus; int /*<<< orphan*/  min_height; int /*<<< orphan*/  min_width; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (struct ov7670_info*) ; 
 int FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/ * ov7670_formats ; 
 struct ov7670_info* FUNC2 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int dumb, void *data)
{
	struct i2c_client *client = FUNC3(sd);
	struct ov7670_config *config = data;
	struct ov7670_info *info = FUNC2(sd);
	int ret;

	info->clock_speed = 30; /* default: a guess */

	/*
	 * Must apply configuration before initializing device, because it
	 * selects I/O method.
	 */
	if (config) {
		info->min_width = config->min_width;
		info->min_height = config->min_height;
		info->use_smbus = config->use_smbus;

		if (config->clock_speed)
			info->clock_speed = config->clock_speed;
	}

	/* Make sure it's an ov7670 */
	ret = FUNC1(sd);
	if (ret) {
		FUNC4(1, debug, client,
			"chip found @ 0x%x (%s) is not an ov7670 chip.\n",
			client->addr << 1, client->adapter->name);
		FUNC0(info);
		return ret;
	}
	FUNC5(client, "chip found @ 0x%02x (%s)\n",
			client->addr << 1, client->adapter->name);

	info->fmt = &ov7670_formats[0];
	info->sat = 128;	/* Review this */
	info->clkrc = info->clock_speed / 30;

	return 0;
}