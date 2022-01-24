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
struct TYPE_2__ {scalar_t__ type; scalar_t__ addr; } ;
struct v4l2_dbg_chip_ident {scalar_t__ revision; int /*<<< orphan*/  ident; TYPE_1__ match; } ;
struct mt9t031 {int /*<<< orphan*/  model; } ;
struct i2c_client {scalar_t__ addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ V4L2_CHIP_MATCH_I2C_ADDR ; 
 struct mt9t031* FUNC0 (struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
				struct v4l2_dbg_chip_ident *id)
{
	struct i2c_client *client = FUNC1(sd);
	struct mt9t031 *mt9t031 = FUNC0(client);

	if (id->match.type != V4L2_CHIP_MATCH_I2C_ADDR)
		return -EINVAL;

	if (id->match.addr != client->addr)
		return -ENODEV;

	id->ident	= mt9t031->model;
	id->revision	= 0;

	return 0;
}