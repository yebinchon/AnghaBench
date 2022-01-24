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
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;
struct cx18 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BALANCE 132 
#define  V4L2_CID_AUDIO_BASS 131 
#define  V4L2_CID_AUDIO_MUTE 130 
#define  V4L2_CID_AUDIO_TREBLE 129 
#define  V4L2_CID_AUDIO_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*) ; 

int FUNC5(struct cx18 *cx, struct v4l2_control *ctrl)
{
	switch (ctrl->id) {
	case V4L2_CID_AUDIO_VOLUME:
		ctrl->value = FUNC4(cx);
		break;
	case V4L2_CID_AUDIO_BASS:
		ctrl->value = FUNC1(cx);
		break;
	case V4L2_CID_AUDIO_TREBLE:
		ctrl->value = FUNC3(cx);
		break;
	case V4L2_CID_AUDIO_BALANCE:
		ctrl->value = FUNC0(cx);
		break;
	case V4L2_CID_AUDIO_MUTE:
		ctrl->value = FUNC2(cx);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}