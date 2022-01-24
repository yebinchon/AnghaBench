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
struct tda9875 {struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 struct tda9875* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  tda9875_ops ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct tda9875 *t;
	struct v4l2_subdev *sd;

	FUNC4(client, "chip found @ 0x%02x (%s)\n",
			client->addr << 1, client->adapter->name);

	if (!FUNC2(client, client->addr))
		return -ENODEV;

	t = FUNC1(sizeof(*t), GFP_KERNEL);
	if (!t)
		return -ENOMEM;
	sd = &t->sd;
	FUNC3(sd, client, &tda9875_ops);

	FUNC0(sd);
	return 0;
}