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
struct ovcamchip {size_t subtype; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/ * chip_names ; 
 int /*<<< orphan*/  FUNC1 (struct ovcamchip*) ; 
 struct ovcamchip* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  ovcamchip_ops ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ovcamchip *ov;
	struct v4l2_subdev *sd;
	int rc = 0;

	ov = FUNC2(sizeof *ov, GFP_KERNEL);
	if (!ov) {
		rc = -ENOMEM;
		goto no_ov;
	}
	sd = &ov->sd;
	FUNC4(sd, client, &ovcamchip_ops);

	rc = FUNC3(client);
	if (rc < 0)
		goto error;

	FUNC5(client, "%s found @ 0x%02x (%s)\n",
			chip_names[ov->subtype], client->addr << 1, client->adapter->name);

	FUNC0(1, "Camera chip detection complete");

	return rc;
error:
	FUNC1(ov);
no_ov:
	FUNC0(1, "returning %d", rc);
	return rc;
}