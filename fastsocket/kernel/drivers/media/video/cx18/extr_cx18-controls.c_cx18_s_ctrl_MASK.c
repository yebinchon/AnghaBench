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
struct v4l2_control {int id; } ;
struct cx18 {int /*<<< orphan*/  sd_av; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
#define  V4L2_CID_AUDIO_BALANCE 137 
#define  V4L2_CID_AUDIO_BASS 136 
#define  V4L2_CID_AUDIO_LOUDNESS 135 
#define  V4L2_CID_AUDIO_MUTE 134 
#define  V4L2_CID_AUDIO_TREBLE 133 
#define  V4L2_CID_AUDIO_VOLUME 132 
#define  V4L2_CID_BRIGHTNESS 131 
#define  V4L2_CID_CONTRAST 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  s_ctrl ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 

__attribute__((used)) static int FUNC2(struct cx18 *cx, struct v4l2_control *vctrl)
{
	switch (vctrl->id) {
		/* Standard V4L2 controls */
	case V4L2_CID_BRIGHTNESS:
	case V4L2_CID_HUE:
	case V4L2_CID_SATURATION:
	case V4L2_CID_CONTRAST:
		return FUNC1(cx->sd_av, core, s_ctrl, vctrl);

	case V4L2_CID_AUDIO_VOLUME:
	case V4L2_CID_AUDIO_MUTE:
	case V4L2_CID_AUDIO_BALANCE:
	case V4L2_CID_AUDIO_BASS:
	case V4L2_CID_AUDIO_TREBLE:
	case V4L2_CID_AUDIO_LOUDNESS:
		return FUNC1(cx->sd_av, core, s_ctrl, vctrl);

	default:
		FUNC0("invalid control 0x%x\n", vctrl->id);
		return -EINVAL;
	}
	return 0;
}