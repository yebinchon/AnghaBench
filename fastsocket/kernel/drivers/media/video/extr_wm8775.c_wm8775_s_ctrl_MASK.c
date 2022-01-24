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
struct wm8775_state {int /*<<< orphan*/  input; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  R14 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R21 ; 
#define  V4L2_CID_AUDIO_MUTE 128 
 struct v4l2_subdev* FUNC0 (struct v4l2_ctrl*) ; 
 struct wm8775_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC0(ctrl);
	struct wm8775_state *state = FUNC1(sd);

	switch (ctrl->id) {
	case V4L2_CID_AUDIO_MUTE:
		FUNC2(sd, R21, 0x0c0);
		FUNC2(sd, R14, 0x1d4);
		FUNC2(sd, R15, 0x1d4);
		if (!ctrl->val)
			FUNC2(sd, R21, 0x100 + state->input);
		return 0;
	}
	return -EINVAL;
}