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
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;
struct saa717x_state {int /*<<< orphan*/  audio_main_bass; int /*<<< orphan*/  audio_main_treble; int /*<<< orphan*/  audio_main_balance; int /*<<< orphan*/  audio_main_volume; int /*<<< orphan*/  audio_main_mute; } ;

/* Variables and functions */
#define  V4L2_CID_AUDIO_BALANCE 136 
#define  V4L2_CID_AUDIO_BASS 135 
#define  V4L2_CID_AUDIO_MUTE 134 
#define  V4L2_CID_AUDIO_TREBLE 133 
#define  V4L2_CID_AUDIO_VOLUME 132 
#define  V4L2_CID_BRIGHTNESS 131 
#define  V4L2_CID_CONTRAST 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,struct saa717x_state*) ; 
 struct v4l2_subdev* FUNC2 (struct v4l2_ctrl*) ; 
 struct saa717x_state* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC2(ctrl);
	struct saa717x_state *state = FUNC3(sd);

	switch (ctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		FUNC0(sd, 0x10a, ctrl->val);
		return 0;

	case V4L2_CID_CONTRAST:
		FUNC0(sd, 0x10b, ctrl->val);
		return 0;

	case V4L2_CID_SATURATION:
		FUNC0(sd, 0x10c, ctrl->val);
		return 0;

	case V4L2_CID_HUE:
		FUNC0(sd, 0x10d, ctrl->val);
		return 0;

	case V4L2_CID_AUDIO_MUTE:
		state->audio_main_mute = ctrl->val;
		break;

	case V4L2_CID_AUDIO_VOLUME:
		state->audio_main_volume = ctrl->val;
		break;

	case V4L2_CID_AUDIO_BALANCE:
		state->audio_main_balance = ctrl->val;
		break;

	case V4L2_CID_AUDIO_TREBLE:
		state->audio_main_treble = ctrl->val;
		break;

	case V4L2_CID_AUDIO_BASS:
		state->audio_main_bass = ctrl->val;
		break;

	default:
		return 0;
	}
	FUNC1(sd, state);
	return 0;
}