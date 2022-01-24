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
typedef  int u32 ;
struct wm8739_state {int clock_freq; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 struct wm8739_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, u32 audiofreq)
{
	struct wm8739_state *state = FUNC0(sd);

	state->clock_freq = audiofreq;
	/* de-activate */
	FUNC1(sd, R9, 0x000);
	switch (audiofreq) {
	case 44100:
		/* 256fps, fs=44.1k */
		FUNC1(sd, R8, 0x020);
		break;
	case 48000:
		/* 256fps, fs=48k */
		FUNC1(sd, R8, 0x000);
		break;
	case 32000:
		/* 256fps, fs=32k */
		FUNC1(sd, R8, 0x018);
		break;
	default:
		break;
	}
	/* activate */
	FUNC1(sd, R9, 0x001);
	return 0;
}