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
struct tuner {int std; } ;

/* Variables and functions */
 int V4L2_STD_NTSC ; 
 int V4L2_STD_NTSC_M ; 
 int V4L2_STD_NTSC_M_JP ; 
 int V4L2_STD_NTSC_M_KR ; 
 int V4L2_STD_PAL ; 
 int V4L2_STD_PAL_60 ; 
 int V4L2_STD_PAL_BG ; 
 int V4L2_STD_PAL_DK ; 
 int V4L2_STD_PAL_I ; 
 int V4L2_STD_PAL_M ; 
 int V4L2_STD_PAL_N ; 
 int V4L2_STD_PAL_Nc ; 
 int V4L2_STD_SECAM ; 
 int V4L2_STD_SECAM_B ; 
 int V4L2_STD_SECAM_DK ; 
 int V4L2_STD_SECAM_G ; 
 int V4L2_STD_SECAM_H ; 
 int V4L2_STD_SECAM_L ; 
 int V4L2_STD_SECAM_LC ; 
 int* ntsc ; 
 int* pal ; 
 int* secam ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct tuner *t)
{
	if ((t->std & V4L2_STD_PAL) == V4L2_STD_PAL) {
		switch (pal[0]) {
		case '6':
			FUNC0("insmod fixup: PAL => PAL-60\n");
			t->std = V4L2_STD_PAL_60;
			break;
		case 'b':
		case 'B':
		case 'g':
		case 'G':
			FUNC0("insmod fixup: PAL => PAL-BG\n");
			t->std = V4L2_STD_PAL_BG;
			break;
		case 'i':
		case 'I':
			FUNC0("insmod fixup: PAL => PAL-I\n");
			t->std = V4L2_STD_PAL_I;
			break;
		case 'd':
		case 'D':
		case 'k':
		case 'K':
			FUNC0("insmod fixup: PAL => PAL-DK\n");
			t->std = V4L2_STD_PAL_DK;
			break;
		case 'M':
		case 'm':
			FUNC0("insmod fixup: PAL => PAL-M\n");
			t->std = V4L2_STD_PAL_M;
			break;
		case 'N':
		case 'n':
			if (pal[1] == 'c' || pal[1] == 'C') {
				FUNC0("insmod fixup: PAL => PAL-Nc\n");
				t->std = V4L2_STD_PAL_Nc;
			} else {
				FUNC0("insmod fixup: PAL => PAL-N\n");
				t->std = V4L2_STD_PAL_N;
			}
			break;
		case '-':
			/* default parameter, do nothing */
			break;
		default:
			FUNC2("pal= argument not recognised\n");
			break;
		}
	}
	if ((t->std & V4L2_STD_SECAM) == V4L2_STD_SECAM) {
		switch (secam[0]) {
		case 'b':
		case 'B':
		case 'g':
		case 'G':
		case 'h':
		case 'H':
			FUNC0("insmod fixup: SECAM => SECAM-BGH\n");
			t->std = V4L2_STD_SECAM_B |
				 V4L2_STD_SECAM_G |
				 V4L2_STD_SECAM_H;
			break;
		case 'd':
		case 'D':
		case 'k':
		case 'K':
			FUNC0("insmod fixup: SECAM => SECAM-DK\n");
			t->std = V4L2_STD_SECAM_DK;
			break;
		case 'l':
		case 'L':
			if ((secam[1] == 'C') || (secam[1] == 'c')) {
				FUNC0("insmod fixup: SECAM => SECAM-L'\n");
				t->std = V4L2_STD_SECAM_LC;
			} else {
				FUNC0("insmod fixup: SECAM => SECAM-L\n");
				t->std = V4L2_STD_SECAM_L;
			}
			break;
		case '-':
			/* default parameter, do nothing */
			break;
		default:
			FUNC2("secam= argument not recognised\n");
			break;
		}
	}

	if ((t->std & V4L2_STD_NTSC) == V4L2_STD_NTSC) {
		switch (ntsc[0]) {
		case 'm':
		case 'M':
			FUNC0("insmod fixup: NTSC => NTSC-M\n");
			t->std = V4L2_STD_NTSC_M;
			break;
		case 'j':
		case 'J':
			FUNC0("insmod fixup: NTSC => NTSC_M_JP\n");
			t->std = V4L2_STD_NTSC_M_JP;
			break;
		case 'k':
		case 'K':
			FUNC0("insmod fixup: NTSC => NTSC_M_KR\n");
			t->std = V4L2_STD_NTSC_M_KR;
			break;
		case '-':
			/* default parameter, do nothing */
			break;
		default:
			FUNC1("ntsc= argument not recognised\n");
			break;
		}
	}
	return 0;
}