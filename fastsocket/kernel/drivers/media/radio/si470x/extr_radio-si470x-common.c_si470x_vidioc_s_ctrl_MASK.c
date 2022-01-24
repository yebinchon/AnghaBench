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
struct v4l2_control {int id; int value; } ;
struct si470x_device {int* registers; TYPE_1__* videodev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t POWERCFG ; 
 int POWERCFG_DMUTE ; 
 size_t SYSCONFIG2 ; 
 int SYSCONFIG2_VOLUME ; 
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct si470x_device*) ; 
 int FUNC2 (struct si470x_device*,size_t) ; 
 struct si470x_device* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
		struct v4l2_control *ctrl)
{
	struct si470x_device *radio = FUNC3(file);
	int retval = 0;

	/* safety checks */
	retval = FUNC1(radio);
	if (retval)
		goto done;

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_VOLUME:
		radio->registers[SYSCONFIG2] &= ~SYSCONFIG2_VOLUME;
		radio->registers[SYSCONFIG2] |= ctrl->value;
		retval = FUNC2(radio, SYSCONFIG2);
		break;
	case V4L2_CID_AUDIO_MUTE:
		if (ctrl->value == 1)
			radio->registers[POWERCFG] &= ~POWERCFG_DMUTE;
		else
			radio->registers[POWERCFG] |= POWERCFG_DMUTE;
		retval = FUNC2(radio, POWERCFG);
		break;
	default:
		retval = -EINVAL;
	}

done:
	if (retval < 0)
		FUNC0(&radio->videodev->dev,
			"set control failed with %d\n", retval);
	return retval;
}