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
struct v4l2_control {scalar_t__ id; int /*<<< orphan*/  value; } ;
struct tlv320aic23b_state {int /*<<< orphan*/  muted; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_CID_AUDIO_MUTE ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct tlv320aic23b_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	struct tlv320aic23b_state *state = FUNC1(sd);

	if (ctrl->id != V4L2_CID_AUDIO_MUTE)
		return -EINVAL;
	state->muted = ctrl->value;
	FUNC0(sd, 0, 0x180); /* mute both channels */
	/* set gain on both channels to +3.0 dB */
	if (!state->muted)
		FUNC0(sd, 0, 0x119);
	return 0;
}