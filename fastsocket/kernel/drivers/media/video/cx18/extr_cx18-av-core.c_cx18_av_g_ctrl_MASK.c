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
struct v4l2_control {int id; int value; } ;
struct cx18 {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BALANCE 136 
#define  V4L2_CID_AUDIO_BASS 135 
#define  V4L2_CID_AUDIO_MUTE 134 
#define  V4L2_CID_AUDIO_TREBLE 133 
#define  V4L2_CID_AUDIO_VOLUME 132 
#define  V4L2_CID_BRIGHTNESS 131 
#define  V4L2_CID_CONTRAST 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 int FUNC0 (struct cx18*,struct v4l2_control*) ; 
 int FUNC1 (struct cx18*,int) ; 
 struct cx18* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	struct cx18 *cx = FUNC2(sd);

	switch (ctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		ctrl->value = (s8)FUNC1(cx, 0x414) + 128;
		break;
	case V4L2_CID_CONTRAST:
		ctrl->value = FUNC1(cx, 0x415) >> 1;
		break;
	case V4L2_CID_SATURATION:
		ctrl->value = FUNC1(cx, 0x420) >> 1;
		break;
	case V4L2_CID_HUE:
		ctrl->value = (s8)FUNC1(cx, 0x422);
		break;
	case V4L2_CID_AUDIO_VOLUME:
	case V4L2_CID_AUDIO_BASS:
	case V4L2_CID_AUDIO_TREBLE:
	case V4L2_CID_AUDIO_BALANCE:
	case V4L2_CID_AUDIO_MUTE:
		return FUNC0(cx, ctrl);
	default:
		return -EINVAL;
	}
	return 0;
}