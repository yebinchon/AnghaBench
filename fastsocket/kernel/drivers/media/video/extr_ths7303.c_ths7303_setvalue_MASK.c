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
typedef  int v4l2_std_id ;
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int V4L2_STD_ALL ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, v4l2_std_id std)
{
	int err = 0;
	u8 val;
	struct i2c_client *client;

	client = FUNC3(sd);

	if (std & (V4L2_STD_ALL & ~V4L2_STD_SECAM)) {
		val = 0x02;
		FUNC1(1, debug, sd, "setting value for SDTV format\n");
	} else {
		val = 0x00;
		FUNC1(1, debug, sd, "disabling all channels\n");
	}

	err |= FUNC0(client, 0x01, val);
	err |= FUNC0(client, 0x02, val);
	err |= FUNC0(client, 0x03, val);

	if (err)
		FUNC2(sd, "write failed\n");

	return err;
}