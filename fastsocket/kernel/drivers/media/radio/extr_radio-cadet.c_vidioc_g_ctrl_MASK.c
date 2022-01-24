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
struct file {int dummy; } ;
struct cadet {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int FUNC0 (struct cadet*) ; 
 struct cadet* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_control *ctrl)
{
	struct cadet *dev = FUNC1(file);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE: /* TODO: Handle this correctly */
		ctrl->value = (FUNC0(dev) == 0);
		break;
	case V4L2_CID_AUDIO_VOLUME:
		ctrl->value = FUNC0(dev);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}