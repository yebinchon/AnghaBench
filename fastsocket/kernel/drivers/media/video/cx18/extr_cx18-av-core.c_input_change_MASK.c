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
struct cx18_av_state {int std; } ;
struct cx18 {struct cx18_av_state av_state; } ;

/* Variables and functions */
 int V4L2_STD_525_60 ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_NTSC_M_JP ; 
 int V4L2_STD_NTSC_M_KR ; 
 int V4L2_STD_PAL ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  FUNC0 (struct cx18*,int,int,int) ; 
 int FUNC1 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*,int,int,int,int) ; 

__attribute__((used)) static void FUNC4(struct cx18 *cx)
{
	struct cx18_av_state *state = &cx->av_state;
	v4l2_std_id std = state->std;
	u8 v;

	/* Follow step 8c and 8d of section 3.16 in the cx18_av datasheet */
	FUNC2(cx, 0x49f, (std & V4L2_STD_NTSC) ? 0x14 : 0x11);
	FUNC0(cx, 0x401, ~0x60, 0);
	FUNC0(cx, 0x401, ~0x60, 0x60);

	if (std & V4L2_STD_525_60) {
		if (std == V4L2_STD_NTSC_M_JP) {
			/* Japan uses EIAJ audio standard */
			FUNC3(cx, 0x808, 0xf7, 0xf7, 0xff);
			FUNC3(cx, 0x80b, 0x02, 0x02, 0x3f);
		} else if (std == V4L2_STD_NTSC_M_KR) {
			/* South Korea uses A2 audio standard */
			FUNC3(cx, 0x808, 0xf8, 0xf8, 0xff);
			FUNC3(cx, 0x80b, 0x03, 0x03, 0x3f);
		} else {
			/* Others use the BTSC audio standard */
			FUNC3(cx, 0x808, 0xf6, 0xf6, 0xff);
			FUNC3(cx, 0x80b, 0x01, 0x01, 0x3f);
		}
	} else if (std & V4L2_STD_PAL) {
		/* Follow tuner change procedure for PAL */
		FUNC3(cx, 0x808, 0xff, 0xff, 0xff);
		FUNC3(cx, 0x80b, 0x03, 0x03, 0x3f);
	} else if (std & V4L2_STD_SECAM) {
		/* Select autodetect for SECAM */
		FUNC3(cx, 0x808, 0xff, 0xff, 0xff);
		FUNC3(cx, 0x80b, 0x03, 0x03, 0x3f);
	}

	v = FUNC1(cx, 0x803);
	if (v & 0x10) {
		/* restart audio decoder microcontroller */
		v &= ~0x10;
		FUNC3(cx, 0x803, v, v, 0x1f);
		v |= 0x10;
		FUNC3(cx, 0x803, v, v, 0x1f);
	}
}