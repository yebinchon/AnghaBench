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
struct ks0127 {struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_KS0127_ADDON ; 
 int /*<<< orphan*/  KS_CMDA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  ks0127_ops ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct ks0127* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,char*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct ks0127 *ks;
	struct v4l2_subdev *sd;

	FUNC6(client, "%s chip found @ 0x%x (%s)\n",
		client->addr == (I2C_KS0127_ADDON >> 1) ? "addon" : "on-board",
		client->addr << 1, client->adapter->name);

	ks = FUNC3(sizeof(*ks), GFP_KERNEL);
	if (ks == NULL)
		return -ENOMEM;
	sd = &ks->sd;
	FUNC5(sd, client, &ks0127_ops);

	/* power up */
	FUNC0();
	FUNC2(sd, KS_CMDA, 0x2c);
	FUNC4(10);

	/* reset the device */
	FUNC1(sd);
	return 0;
}