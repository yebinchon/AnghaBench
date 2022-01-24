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
struct v4l2_ctrl {int id; int val; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_BRIGHTNESS 131 
#define  V4L2_CID_CONTRAST 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int) ; 
 struct v4l2_subdev* FUNC1 (struct v4l2_ctrl*) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC1(ctrl);
	struct i2c_client *client = FUNC2(sd);

	switch (ctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		FUNC0(client, 0x414, ctrl->val - 128);
		break;

	case V4L2_CID_CONTRAST:
		FUNC0(client, 0x415, ctrl->val << 1);
		break;

	case V4L2_CID_SATURATION:
		FUNC0(client, 0x420, ctrl->val << 1);
		FUNC0(client, 0x421, ctrl->val << 1);
		break;

	case V4L2_CID_HUE:
		FUNC0(client, 0x422, ctrl->val);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}