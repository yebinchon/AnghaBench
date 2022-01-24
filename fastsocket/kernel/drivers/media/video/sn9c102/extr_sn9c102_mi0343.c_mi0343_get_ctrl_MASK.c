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
struct v4l2_control {int id; int value; } ;
struct sn9c102_sensor {int /*<<< orphan*/  i2c_slave_id; } ;
struct sn9c102_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  SN9C102_V4L2_CID_GREEN_BALANCE 134 
#define  V4L2_CID_BLUE_BALANCE 133 
#define  V4L2_CID_EXPOSURE 132 
#define  V4L2_CID_GAIN 131 
#define  V4L2_CID_HFLIP 130 
#define  V4L2_CID_RED_BALANCE 129 
#define  V4L2_CID_VFLIP 128 
 struct sn9c102_sensor* FUNC0 (struct sn9c102_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sn9c102_device*,struct sn9c102_sensor*,int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static int FUNC2(struct sn9c102_device* cam,
			   struct v4l2_control* ctrl)
{
	struct sn9c102_sensor* s = FUNC0(cam);
	u8 data[2];

	switch (ctrl->id) {
	case V4L2_CID_EXPOSURE:
		if (FUNC1(cam, s, s->i2c_slave_id, 0x09, 2,
					     data) < 0)
			return -EIO;
		ctrl->value = data[0];
		return 0;
	case V4L2_CID_GAIN:
		if (FUNC1(cam, s, s->i2c_slave_id, 0x35, 2,
					     data) < 0)
			return -EIO;
		break;
	case V4L2_CID_HFLIP:
		if (FUNC1(cam, s, s->i2c_slave_id, 0x20, 2,
					     data) < 0)
			return -EIO;
		ctrl->value = data[1] & 0x20 ? 1 : 0;
		return 0;
	case V4L2_CID_VFLIP:
		if (FUNC1(cam, s, s->i2c_slave_id, 0x20, 2,
					     data) < 0)
			return -EIO;
		ctrl->value = data[1] & 0x80 ? 1 : 0;
		return 0;
	case V4L2_CID_RED_BALANCE:
		if (FUNC1(cam, s, s->i2c_slave_id, 0x2d, 2,
					     data) < 0)
			return -EIO;
		break;
	case V4L2_CID_BLUE_BALANCE:
		if (FUNC1(cam, s, s->i2c_slave_id, 0x2c, 2,
					     data) < 0)
			return -EIO;
		break;
	case SN9C102_V4L2_CID_GREEN_BALANCE:
		if (FUNC1(cam, s, s->i2c_slave_id, 0x2e, 2,
					     data) < 0)
			return -EIO;
		break;
	default:
		return -EINVAL;
	}

	switch (ctrl->id) {
	case V4L2_CID_GAIN:
	case V4L2_CID_RED_BALANCE:
	case V4L2_CID_BLUE_BALANCE:
	case SN9C102_V4L2_CID_GREEN_BALANCE:
		ctrl->value = data[1] | (data[0] << 8);
		if (ctrl->value >= 0x10 && ctrl->value <= 0x3f)
			ctrl->value -= 0x10;
		else if (ctrl->value >= 0x60 && ctrl->value <= 0x7f)
			ctrl->value -= 0x60;
		else if (ctrl->value >= 0xe0 && ctrl->value <= 0xff)
			ctrl->value -= 0xe0;
	}

	return 0;
}