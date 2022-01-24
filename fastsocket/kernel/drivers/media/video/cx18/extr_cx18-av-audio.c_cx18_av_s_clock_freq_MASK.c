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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {scalar_t__ aud_input; } ;
struct cx18 {struct cx18_av_state av_state; } ;

/* Variables and functions */
 scalar_t__ CX18_AV_AUDIO_SERIAL2 ; 
 int FUNC0 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int,int,int,int) ; 
 int FUNC3 (struct cx18*,int /*<<< orphan*/ ) ; 
 struct cx18* FUNC4 (struct v4l2_subdev*) ; 

int FUNC5(struct v4l2_subdev *sd, u32 freq)
{
	struct cx18 *cx = FUNC4(sd);
	struct cx18_av_state *state = &cx->av_state;
	int retval;
	u8 v;

	if (state->aud_input > CX18_AV_AUDIO_SERIAL2) {
		v = FUNC0(cx, 0x803) & ~0x10;
		FUNC2(cx, 0x803, v, v, 0x1f);
		FUNC1(cx, 0x8d3, 0x1f);
	}
	v = FUNC0(cx, 0x810) | 0x1;
	FUNC2(cx, 0x810, v, v, 0x0f);

	retval = FUNC3(cx, freq);

	v = FUNC0(cx, 0x810) & ~0x1;
	FUNC2(cx, 0x810, v, v, 0x0f);
	if (state->aud_input > CX18_AV_AUDIO_SERIAL2) {
		v = FUNC0(cx, 0x803) | 0x10;
		FUNC2(cx, 0x803, v, v, 0x1f);
	}
	return retval;
}