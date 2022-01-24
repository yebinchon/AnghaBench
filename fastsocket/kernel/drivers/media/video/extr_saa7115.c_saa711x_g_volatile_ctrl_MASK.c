#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; } ;
struct saa711x_state {TYPE_4__* gain; TYPE_2__* agc; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_8__ {TYPE_3__ cur; } ;
struct TYPE_5__ {int /*<<< orphan*/  val; } ;
struct TYPE_6__ {TYPE_1__ cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_0F_CHROMA_GAIN_CNTL ; 
#define  V4L2_CID_CHROMA_AGC 128 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC1 (struct v4l2_ctrl*) ; 
 struct saa711x_state* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct v4l2_subdev *sd = FUNC1(ctrl);
	struct saa711x_state *state = FUNC2(sd);

	switch (ctrl->id) {
	case V4L2_CID_CHROMA_AGC:
		/* chroma gain cluster */
		if (state->agc->cur.val)
			state->gain->cur.val =
				FUNC0(sd, R_0F_CHROMA_GAIN_CNTL) & 0x7f;
		break;
	}
	return 0;
}