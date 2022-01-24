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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  cs5345_ops ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct v4l2_subdev *sd;

	/* Check if the adapter supports the needed features */
	if (!FUNC1(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	FUNC4(client, "chip found @ 0x%x (%s)\n",
			client->addr << 1, client->adapter->name);

	sd = FUNC2(sizeof(struct v4l2_subdev), GFP_KERNEL);
	if (sd == NULL)
		return -ENOMEM;
	FUNC3(sd, client, &cs5345_ops);

	FUNC0(sd, 0x02, 0x00);
	FUNC0(sd, 0x04, 0x01);
	FUNC0(sd, 0x09, 0x01);
	return 0;
}