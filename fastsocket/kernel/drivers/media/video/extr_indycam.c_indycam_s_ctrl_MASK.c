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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
struct indycam {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAMERA_VERSION_MOOSE ; 
 int EINVAL ; 
 int INDYCAM_CONTROL_AGCENA ; 
 int INDYCAM_CONTROL_AWBCTL ; 
#define  INDYCAM_CONTROL_BLUE_SATURATION 136 
#define  INDYCAM_CONTROL_RED_SATURATION 135 
 int /*<<< orphan*/  INDYCAM_REG_BLUE_BALANCE ; 
 int /*<<< orphan*/  INDYCAM_REG_BLUE_SATURATION ; 
 int /*<<< orphan*/  INDYCAM_REG_CONTROL ; 
 int /*<<< orphan*/  INDYCAM_REG_GAIN ; 
 int /*<<< orphan*/  INDYCAM_REG_GAMMA ; 
 int /*<<< orphan*/  INDYCAM_REG_RED_BALANCE ; 
 int /*<<< orphan*/  INDYCAM_REG_RED_SATURATION ; 
 int /*<<< orphan*/  INDYCAM_REG_SHUTTER ; 
#define  V4L2_CID_AUTOGAIN 134 
#define  V4L2_CID_AUTO_WHITE_BALANCE 133 
#define  V4L2_CID_BLUE_BALANCE 132 
#define  V4L2_CID_EXPOSURE 131 
#define  V4L2_CID_GAIN 130 
#define  V4L2_CID_GAMMA 129 
#define  V4L2_CID_RED_BALANCE 128 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct indycam* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	struct indycam *camera = FUNC2(sd);
	u8 reg;
	int ret = 0;

	switch (ctrl->id) {
	case V4L2_CID_AUTOGAIN:
	case V4L2_CID_AUTO_WHITE_BALANCE:
		ret = FUNC0(sd, INDYCAM_REG_CONTROL, &reg);
		if (ret)
			break;

		if (ctrl->id == V4L2_CID_AUTOGAIN) {
			if (ctrl->value)
				reg |= INDYCAM_CONTROL_AGCENA;
			else
				reg &= ~INDYCAM_CONTROL_AGCENA;
		} else {
			if (ctrl->value)
				reg |= INDYCAM_CONTROL_AWBCTL;
			else
				reg &= ~INDYCAM_CONTROL_AWBCTL;
		}

		ret = FUNC1(sd, INDYCAM_REG_CONTROL, reg);
		break;
	case V4L2_CID_EXPOSURE:
		reg = (ctrl->value == 0xff) ? 0x00 : (ctrl->value + 1);
		ret = FUNC1(sd, INDYCAM_REG_SHUTTER, reg);
		break;
	case V4L2_CID_GAIN:
		ret = FUNC1(sd, INDYCAM_REG_GAIN, ctrl->value);
		break;
	case V4L2_CID_RED_BALANCE:
		ret = FUNC1(sd, INDYCAM_REG_RED_BALANCE,
					ctrl->value);
		break;
	case V4L2_CID_BLUE_BALANCE:
		ret = FUNC1(sd, INDYCAM_REG_BLUE_BALANCE,
					ctrl->value);
		break;
	case INDYCAM_CONTROL_RED_SATURATION:
		ret = FUNC1(sd, INDYCAM_REG_RED_SATURATION,
					ctrl->value);
		break;
	case INDYCAM_CONTROL_BLUE_SATURATION:
		ret = FUNC1(sd, INDYCAM_REG_BLUE_SATURATION,
					ctrl->value);
		break;
	case V4L2_CID_GAMMA:
		if (camera->version == CAMERA_VERSION_MOOSE) {
			ret = FUNC1(sd, INDYCAM_REG_GAMMA,
						ctrl->value);
		}
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}