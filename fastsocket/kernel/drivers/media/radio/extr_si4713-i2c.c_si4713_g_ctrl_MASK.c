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
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct si4713_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mute; scalar_t__ power_state; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SI4713_TX_LINE_INPUT_MUTE ; 
#define  V4L2_CID_AUDIO_MUTE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct si4713_device* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	struct si4713_device *sdev = FUNC4(sd);
	int rval = 0;

	if (!sdev)
		return -ENODEV;

	FUNC1(&sdev->mutex);

	if (sdev->power_state) {
		rval = FUNC3(sdev, SI4713_TX_LINE_INPUT_MUTE,
						&sdev->mute);

		if (rval < 0)
			goto unlock;
	}

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		ctrl->value = FUNC0(sdev->mute);
		break;
	}

unlock:
	FUNC2(&sdev->mutex);
	return rval;
}