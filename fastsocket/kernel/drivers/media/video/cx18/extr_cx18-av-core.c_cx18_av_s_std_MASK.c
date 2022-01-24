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
typedef  int v4l2_std_id ;
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {scalar_t__ radio; int std; } ;
struct cx18 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,char*,int) ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_NTSC_443 ; 
 int V4L2_STD_NTSC_M_JP ; 
 int V4L2_STD_PAL ; 
 int V4L2_STD_PAL_60 ; 
 int V4L2_STD_PAL_M ; 
 int V4L2_STD_PAL_N ; 
 int V4L2_STD_PAL_Nc ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*) ; 
 struct cx18_av_state* FUNC4 (struct v4l2_subdev*) ; 
 struct cx18* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, v4l2_std_id norm)
{
	struct cx18_av_state *state = FUNC4(sd);
	struct cx18 *cx = FUNC5(sd);

	u8 fmt = 0; 	/* zero is autodetect */
	u8 pal_m = 0;

	if (state->radio == 0 && state->std == norm)
		return 0;

	state->radio = 0;
	state->std = norm;

	/* First tests should be against specific std */
	if (state->std == V4L2_STD_NTSC_M_JP) {
		fmt = 0x2;
	} else if (state->std == V4L2_STD_NTSC_443) {
		fmt = 0x3;
	} else if (state->std == V4L2_STD_PAL_M) {
		pal_m = 1;
		fmt = 0x5;
	} else if (state->std == V4L2_STD_PAL_N) {
		fmt = 0x6;
	} else if (state->std == V4L2_STD_PAL_Nc) {
		fmt = 0x7;
	} else if (state->std == V4L2_STD_PAL_60) {
		fmt = 0x8;
	} else {
		/* Then, test against generic ones */
		if (state->std & V4L2_STD_NTSC)
			fmt = 0x1;
		else if (state->std & V4L2_STD_PAL)
			fmt = 0x4;
		else if (state->std & V4L2_STD_SECAM)
			fmt = 0xc;
	}

	FUNC0(sd, "changing video std to fmt %i\n", fmt);

	/* Follow step 9 of section 3.16 in the cx18_av datasheet.
	   Without this PAL may display a vertical ghosting effect.
	   This happens for example with the Yuan MPC622. */
	if (fmt >= 4 && fmt < 8) {
		/* Set format to NTSC-M */
		FUNC1(cx, 0x400, ~0xf, 1);
		/* Turn off LCOMB */
		FUNC1(cx, 0x47b, ~6, 0);
	}
	FUNC1(cx, 0x400, ~0x2f, fmt | 0x20);
	FUNC1(cx, 0x403, ~0x3, pal_m);
	FUNC2(cx);
	FUNC3(cx);
	return 0;
}