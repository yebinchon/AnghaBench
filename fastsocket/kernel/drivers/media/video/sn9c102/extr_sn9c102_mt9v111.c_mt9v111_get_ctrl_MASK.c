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
#define  V4L2_CID_VFLIP 128 
 struct sn9c102_sensor* FUNC0 (struct sn9c102_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sn9c102_device*,struct sn9c102_sensor*,int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static int FUNC2(struct sn9c102_device *cam,
			    struct v4l2_control *ctrl)
{
	struct sn9c102_sensor *s = FUNC0(cam);
	u8 data[2];
	int err = 0;

	switch (ctrl->id) {
	case V4L2_CID_VFLIP:
		if (FUNC1(cam, s, s->i2c_slave_id, 0x20, 2,
					     data) < 0)
			return -EIO;
		ctrl->value = data[1] & 0x80 ? 1 : 0;
		return 0;
	default:
		return -EINVAL;
	}

	return err ? -EIO : 0;
}