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
 int FUNC1 (struct sn9c102_device*,struct sn9c102_sensor*,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sn9c102_device* cam,
			   const struct v4l2_control* ctrl)
{
	struct sn9c102_sensor* s = FUNC0(cam);
	int err = 0;

	switch (ctrl->id) {
	case V4L2_CID_EXPOSURE:
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x09, ctrl->value, 0x00,
						 0, 0);
		break;
	case V4L2_CID_GAIN:
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x35, 0x03, ctrl->value,
						 0, 0);
		break;
	case V4L2_CID_RED_BALANCE:
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x2c, 0x03, ctrl->value,
						 0, 0);
		break;
	case V4L2_CID_BLUE_BALANCE:
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x2d, 0x03, ctrl->value,
						 0, 0);
		break;
	case SN9C102_V4L2_CID_GREEN_BALANCE:
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x2b, 0x03, ctrl->value,
						 0, 0);
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x2e, 0x03, ctrl->value,
						 0, 0);
		break;
	case V4L2_CID_HFLIP:
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x20, ctrl->value ? 0x40:0x00,
						 ctrl->value ? 0x20:0x00,
						 0, 0);
		break;
	case V4L2_CID_VFLIP:
		err += FUNC1(cam, s, 4, s->i2c_slave_id,
						 0x20, ctrl->value ? 0x80:0x00,
						 ctrl->value ? 0x80:0x00,
						 0, 0);
		break;
	default:
		return -EINVAL;
	}

	return err ? -EIO : 0;
}