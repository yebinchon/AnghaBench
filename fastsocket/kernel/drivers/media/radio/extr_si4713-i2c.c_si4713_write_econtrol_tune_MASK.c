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
typedef  void* u8 ;
struct v4l2_ext_control {int id; void* value; } ;
struct si4713_device {int /*<<< orphan*/  mutex; void* antenna_capacitor; void* power_level; scalar_t__ power_state; int /*<<< orphan*/  sd; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
#define  V4L2_CID_TUNE_ANTENNA_CAPACITOR 129 
#define  V4L2_CID_TUNE_POWER_LEVEL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct si4713_device*,void*,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct v4l2_ext_control*) ; 

__attribute__((used)) static int FUNC4(struct si4713_device *sdev,
				struct v4l2_ext_control *control)
{
	s32 rval = 0;
	u8 power, antcap;

	rval = FUNC3(&sdev->sd, control);
	if (rval < 0)
		goto exit;

	FUNC0(&sdev->mutex);

	switch (control->id) {
	case V4L2_CID_TUNE_POWER_LEVEL:
		power = control->value;
		antcap = sdev->antenna_capacitor;
		break;
	case V4L2_CID_TUNE_ANTENNA_CAPACITOR:
		power = sdev->power_level;
		antcap = control->value;
		break;
	default:
		rval = -EINVAL;
		goto unlock;
	};

	if (sdev->power_state)
		rval = FUNC2(sdev, power, antcap);

	if (rval == 0) {
		sdev->power_level = power;
		sdev->antenna_capacitor = antcap;
	}

unlock:
	FUNC1(&sdev->mutex);
exit:
	return rval;
}