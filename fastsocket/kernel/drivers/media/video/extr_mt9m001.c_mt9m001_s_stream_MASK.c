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

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MT9M001_OUTPUT_CONTROL ; 
 scalar_t__ FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, int enable)
{
	struct i2c_client *client = FUNC1(sd);

	/* Switch to master "normal" mode or stop sensor readout */
	if (FUNC0(client, MT9M001_OUTPUT_CONTROL, enable ? 2 : 0) < 0)
		return -EIO;
	return 0;
}