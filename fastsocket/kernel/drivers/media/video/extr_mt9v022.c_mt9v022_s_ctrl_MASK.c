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
struct v4l2_queryctrl {unsigned long maximum; unsigned long minimum; } ;
struct v4l2_control {int id; unsigned long value; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  MT9V022_AEC_AGC_ENABLE ; 
 int /*<<< orphan*/  MT9V022_ANALOG_GAIN ; 
 int /*<<< orphan*/  MT9V022_READ_MODE ; 
 int /*<<< orphan*/  MT9V022_TOTAL_SHUTTER_WIDTH ; 
#define  V4L2_CID_AUTOGAIN 133 
#define  V4L2_CID_EXPOSURE 132 
#define  V4L2_CID_EXPOSURE_AUTO 131 
#define  V4L2_CID_GAIN 130 
#define  V4L2_CID_HFLIP 129 
#define  V4L2_CID_VFLIP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  mt9v022_ops ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,unsigned long) ; 
 struct v4l2_queryctrl* FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	int data;
	struct i2c_client *client = FUNC6(sd);
	const struct v4l2_queryctrl *qctrl;

	qctrl = FUNC5(&mt9v022_ops, ctrl->id);
	if (!qctrl)
		return -EINVAL;

	switch (ctrl->id) {
	case V4L2_CID_VFLIP:
		if (ctrl->value)
			data = FUNC3(client, MT9V022_READ_MODE, 0x10);
		else
			data = FUNC1(client, MT9V022_READ_MODE, 0x10);
		if (data < 0)
			return -EIO;
		break;
	case V4L2_CID_HFLIP:
		if (ctrl->value)
			data = FUNC3(client, MT9V022_READ_MODE, 0x20);
		else
			data = FUNC1(client, MT9V022_READ_MODE, 0x20);
		if (data < 0)
			return -EIO;
		break;
	case V4L2_CID_GAIN:
		/* mt9v022 has minimum == default */
		if (ctrl->value > qctrl->maximum || ctrl->value < qctrl->minimum)
			return -EINVAL;
		else {
			unsigned long range = qctrl->maximum - qctrl->minimum;
			/* Valid values 16 to 64, 32 to 64 must be even. */
			unsigned long gain = ((ctrl->value - qctrl->minimum) *
					      48 + range / 2) / range + 16;
			if (gain >= 32)
				gain &= ~1;
			/*
			 * The user wants to set gain manually, hope, she
			 * knows, what she's doing... Switch AGC off.
			 */

			if (FUNC1(client, MT9V022_AEC_AGC_ENABLE, 0x2) < 0)
				return -EIO;

			FUNC0(&client->dev, "Setting gain from %d to %lu\n",
				FUNC2(client, MT9V022_ANALOG_GAIN), gain);
			if (FUNC4(client, MT9V022_ANALOG_GAIN, gain) < 0)
				return -EIO;
		}
		break;
	case V4L2_CID_EXPOSURE:
		/* mt9v022 has maximum == default */
		if (ctrl->value > qctrl->maximum || ctrl->value < qctrl->minimum)
			return -EINVAL;
		else {
			unsigned long range = qctrl->maximum - qctrl->minimum;
			unsigned long shutter = ((ctrl->value - qctrl->minimum) *
						 479 + range / 2) / range + 1;
			/*
			 * The user wants to set shutter width manually, hope,
			 * she knows, what she's doing... Switch AEC off.
			 */

			if (FUNC1(client, MT9V022_AEC_AGC_ENABLE, 0x1) < 0)
				return -EIO;

			FUNC0(&client->dev, "Shutter width from %d to %lu\n",
				FUNC2(client, MT9V022_TOTAL_SHUTTER_WIDTH),
				shutter);
			if (FUNC4(client, MT9V022_TOTAL_SHUTTER_WIDTH,
				      shutter) < 0)
				return -EIO;
		}
		break;
	case V4L2_CID_AUTOGAIN:
		if (ctrl->value)
			data = FUNC3(client, MT9V022_AEC_AGC_ENABLE, 0x2);
		else
			data = FUNC1(client, MT9V022_AEC_AGC_ENABLE, 0x2);
		if (data < 0)
			return -EIO;
		break;
	case V4L2_CID_EXPOSURE_AUTO:
		if (ctrl->value)
			data = FUNC3(client, MT9V022_AEC_AGC_ENABLE, 0x1);
		else
			data = FUNC1(client, MT9V022_AEC_AGC_ENABLE, 0x1);
		if (data < 0)
			return -EIO;
		break;
	}
	return 0;
}