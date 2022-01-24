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
struct v4l2_queryctrl {int dummy; } ;
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct mt9m111 {int /*<<< orphan*/  hflip; int /*<<< orphan*/  vflip; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MT9M111_RMB_MIRROR_COLS ; 
 int /*<<< orphan*/  MT9M111_RMB_MIRROR_ROWS ; 
#define  V4L2_CID_AUTO_WHITE_BALANCE 132 
#define  V4L2_CID_EXPOSURE_AUTO 131 
#define  V4L2_CID_GAIN 130 
#define  V4L2_CID_HFLIP 129 
#define  V4L2_CID_VFLIP 128 
 int /*<<< orphan*/  mt9m111_ops ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct v4l2_queryctrl* FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct mt9m111* FUNC5 (struct i2c_client*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	struct i2c_client *client = FUNC6(sd);
	struct mt9m111 *mt9m111 = FUNC5(client);
	const struct v4l2_queryctrl *qctrl;
	int ret;

	qctrl = FUNC4(&mt9m111_ops, ctrl->id);
	if (!qctrl)
		return -EINVAL;

	switch (ctrl->id) {
	case V4L2_CID_VFLIP:
		mt9m111->vflip = ctrl->value;
		ret = FUNC2(client, ctrl->value,
					MT9M111_RMB_MIRROR_ROWS);
		break;
	case V4L2_CID_HFLIP:
		mt9m111->hflip = ctrl->value;
		ret = FUNC2(client, ctrl->value,
					MT9M111_RMB_MIRROR_COLS);
		break;
	case V4L2_CID_GAIN:
		ret = FUNC3(client, ctrl->value);
		break;
	case V4L2_CID_EXPOSURE_AUTO:
		ret =  FUNC0(client, ctrl->value);
		break;
	case V4L2_CID_AUTO_WHITE_BALANCE:
		ret =  FUNC1(client, ctrl->value);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}