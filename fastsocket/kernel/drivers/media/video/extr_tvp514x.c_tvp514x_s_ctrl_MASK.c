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
struct v4l2_control {int value; int id; } ;
struct tvp514x_decoder {TYPE_1__* tvp514x_regs; } ;
struct TYPE_2__ {int val; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 size_t REG_AFE_GAIN_CTRL ; 
 size_t REG_BRIGHTNESS ; 
 size_t REG_CONTRAST ; 
 size_t REG_HUE ; 
 size_t REG_SATURATION ; 
#define  V4L2_CID_AUTOGAIN 132 
#define  V4L2_CID_BRIGHTNESS 131 
#define  V4L2_CID_CONTRAST 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 int /*<<< orphan*/  debug ; 
 struct tvp514x_decoder* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int
FUNC4(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	struct tvp514x_decoder *decoder = FUNC0(sd);
	int err = -EINVAL, value;

	if (ctrl == NULL)
		return err;

	value = ctrl->value;

	switch (ctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		if (ctrl->value < 0 || ctrl->value > 255) {
			FUNC3(sd, "invalid brightness setting %d\n",
					ctrl->value);
			return -ERANGE;
		}
		err = FUNC1(sd, REG_BRIGHTNESS,
				value);
		if (err)
			return err;

		decoder->tvp514x_regs[REG_BRIGHTNESS].val = value;
		break;
	case V4L2_CID_CONTRAST:
		if (ctrl->value < 0 || ctrl->value > 255) {
			FUNC3(sd, "invalid contrast setting %d\n",
					ctrl->value);
			return -ERANGE;
		}
		err = FUNC1(sd, REG_CONTRAST, value);
		if (err)
			return err;

		decoder->tvp514x_regs[REG_CONTRAST].val = value;
		break;
	case V4L2_CID_SATURATION:
		if (ctrl->value < 0 || ctrl->value > 255) {
			FUNC3(sd, "invalid saturation setting %d\n",
					ctrl->value);
			return -ERANGE;
		}
		err = FUNC1(sd, REG_SATURATION, value);
		if (err)
			return err;

		decoder->tvp514x_regs[REG_SATURATION].val = value;
		break;
	case V4L2_CID_HUE:
		if (value == 180)
			value = 0x7F;
		else if (value == -180)
			value = 0x80;
		else if (value == 0)
			value = 0;
		else {
			FUNC3(sd, "invalid hue setting %d\n", ctrl->value);
			return -ERANGE;
		}
		err = FUNC1(sd, REG_HUE, value);
		if (err)
			return err;

		decoder->tvp514x_regs[REG_HUE].val = value;
		break;
	case V4L2_CID_AUTOGAIN:
		if (value == 1)
			value = 0x0F;
		else if (value == 0)
			value = 0x0C;
		else {
			FUNC3(sd, "invalid auto gain setting %d\n",
					ctrl->value);
			return -ERANGE;
		}
		err = FUNC1(sd, REG_AFE_GAIN_CTRL, value);
		if (err)
			return err;

		decoder->tvp514x_regs[REG_AFE_GAIN_CTRL].val = value;
		break;
	default:
		FUNC3(sd, "invalid control id %d\n", ctrl->id);
		return err;
	}

	FUNC2(1, debug, sd, "Set Control: ID - %d - %d",
			ctrl->id, ctrl->value);

	return err;
}