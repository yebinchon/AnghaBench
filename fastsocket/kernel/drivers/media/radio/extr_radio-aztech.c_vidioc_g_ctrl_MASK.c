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
struct aztech {int curvol; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_MUTE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 struct aztech* FUNC0 (struct file*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
			    struct v4l2_control *ctrl)
{
	struct aztech *az = FUNC0(file);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		if (az->curvol == 0)
			ctrl->value = 1;
		else
			ctrl->value = 0;
		return 0;
	case V4L2_CID_AUDIO_VOLUME:
		ctrl->value = az->curvol * 6554;
		return 0;
	}
	return -EINVAL;
}