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
struct v4l2_subdev {int /*<<< orphan*/  grp_id; int /*<<< orphan*/  name; } ;
struct cx18_av_state {int rev; int audclk_freq; struct v4l2_subdev sd; scalar_t__ slicer_line_delay; scalar_t__ slicer_line_offset; int /*<<< orphan*/  audmode; int /*<<< orphan*/  aud_input; int /*<<< orphan*/  vid_input; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {char* name; } ;
struct cx18 {TYPE_1__ v4l2_dev; struct cx18_av_state av_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_AV_AUDIO8 ; 
 int /*<<< orphan*/  CX18_AV_COMPOSITE7 ; 
 int /*<<< orphan*/  CX18_HW_418_AV ; 
 int /*<<< orphan*/  CXADEC_CHIP_CTRL ; 
 int CXADEC_CHIP_TYPE_MAKO ; 
 int /*<<< orphan*/  V4L2_IDENT_CX23418_843 ; 
 int /*<<< orphan*/  V4L2_IDENT_UNKNOWN ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_LANG1 ; 
 int /*<<< orphan*/  FUNC0 (struct cx18*) ; 
 int /*<<< orphan*/  cx18_av_ops ; 
 int FUNC1 (struct cx18*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int FUNC3 (TYPE_1__*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,struct cx18*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

int FUNC6(struct cx18 *cx)
{
	struct cx18_av_state *state = &cx->av_state;
	struct v4l2_subdev *sd;
	int err;

	state->rev = FUNC1(cx, CXADEC_CHIP_CTRL) & 0xffff;
	state->id = ((state->rev >> 4) == CXADEC_CHIP_TYPE_MAKO)
		    ? V4L2_IDENT_CX23418_843 : V4L2_IDENT_UNKNOWN;

	state->vid_input = CX18_AV_COMPOSITE7;
	state->aud_input = CX18_AV_AUDIO8;
	state->audclk_freq = 48000;
	state->audmode = V4L2_TUNER_MODE_LANG1;
	state->slicer_line_delay = 0;
	state->slicer_line_offset = (10 + state->slicer_line_delay - 2);

	sd = &state->sd;
	FUNC5(sd, &cx18_av_ops);
	FUNC4(sd, cx);
	FUNC2(sd->name, sizeof(sd->name),
		 "%s %03x", cx->v4l2_dev.name, (state->rev >> 4));
	sd->grp_id = CX18_HW_418_AV;
	err = FUNC3(&cx->v4l2_dev, sd);
	if (!err)
		FUNC0(cx);
	return err;
}