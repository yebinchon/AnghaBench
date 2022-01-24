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
typedef  scalar_t__ v4l2_std_id ;
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {scalar_t__ std; scalar_t__ ident; int /*<<< orphan*/  audclk_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_0E_CHROMA_CNTL_1 ; 
 int /*<<< orphan*/  R_80_GLOBAL_CNTL_1 ; 
 scalar_t__ V4L2_IDENT_SAA7113 ; 
 scalar_t__ V4L2_IDENT_SAA7114 ; 
 scalar_t__ V4L2_STD_525_60 ; 
 scalar_t__ V4L2_STD_NTSC_M_JP ; 
 scalar_t__ V4L2_STD_PAL_60 ; 
 scalar_t__ V4L2_STD_PAL_M ; 
 scalar_t__ V4L2_STD_PAL_Nc ; 
 scalar_t__ V4L2_STD_SECAM ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  saa7115_cfg_50hz_video ; 
 int /*<<< orphan*/  saa7115_cfg_60hz_video ; 
 int /*<<< orphan*/  saa7115_cfg_vbi_on ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct saa711x_state* FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 

__attribute__((used)) static void FUNC7(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct saa711x_state *state = FUNC5(sd);

	/* Prevent unnecessary standard changes. During a standard
	   change the I-Port is temporarily disabled. Any devices
	   reading from that port can get confused.
	   Note that s_std is also used to switch from
	   radio to TV mode, so if a s_std is broadcast to
	   all I2C devices then you do not want to have an unwanted
	   side-effect here. */
	if (std == state->std)
		return;

	state->std = std;

	// This works for NTSC-M, SECAM-L and the 50Hz PAL variants.
	if (std & V4L2_STD_525_60) {
		FUNC6(1, debug, sd, "decoder set standard 60 Hz\n");
		FUNC4(sd, saa7115_cfg_60hz_video);
		FUNC2(sd, 720, 480);
	} else {
		FUNC6(1, debug, sd, "decoder set standard 50 Hz\n");
		FUNC4(sd, saa7115_cfg_50hz_video);
		FUNC2(sd, 720, 576);
	}

	/* Register 0E - Bits D6-D4 on NO-AUTO mode
		(SAA7111 and SAA7113 doesn't have auto mode)
	    50 Hz / 625 lines           60 Hz / 525 lines
	000 PAL BGDHI (4.43Mhz)         NTSC M (3.58MHz)
	001 NTSC 4.43 (50 Hz)           PAL 4.43 (60 Hz)
	010 Combination-PAL N (3.58MHz) NTSC 4.43 (60 Hz)
	011 NTSC N (3.58MHz)            PAL M (3.58MHz)
	100 reserved                    NTSC-Japan (3.58MHz)
	*/
	if (state->ident <= V4L2_IDENT_SAA7113) {
		u8 reg = FUNC0(sd, R_0E_CHROMA_CNTL_1) & 0x8f;

		if (std == V4L2_STD_PAL_M) {
			reg |= 0x30;
		} else if (std == V4L2_STD_PAL_Nc) {
			reg |= 0x20;
		} else if (std == V4L2_STD_PAL_60) {
			reg |= 0x10;
		} else if (std == V4L2_STD_NTSC_M_JP) {
			reg |= 0x40;
		} else if (std & V4L2_STD_SECAM) {
			reg |= 0x50;
		}
		FUNC3(sd, R_0E_CHROMA_CNTL_1, reg);
	} else {
		/* restart task B if needed */
		int taskb = FUNC0(sd, R_80_GLOBAL_CNTL_1) & 0x10;

		if (taskb && state->ident == V4L2_IDENT_SAA7114) {
			FUNC4(sd, saa7115_cfg_vbi_on);
		}

		/* switch audio mode too! */
		FUNC1(sd, state->audclk_freq);
	}
}