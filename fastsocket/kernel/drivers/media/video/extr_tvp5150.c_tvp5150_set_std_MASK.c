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
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int norm; } ;

/* Variables and functions */
 int /*<<< orphan*/  TVP5150_VIDEO_STD ; 
 int V4L2_STD_ALL ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_NTSC_443 ; 
 int V4L2_STD_PAL ; 
 int V4L2_STD_PAL_M ; 
 int V4L2_STD_PAL_N ; 
 int V4L2_STD_PAL_Nc ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  debug ; 
 struct tvp5150* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct tvp5150 *decoder = FUNC0(sd);
	int fmt = 0;

	decoder->norm = std;

	/* First tests should be against specific std */

	if (std == V4L2_STD_ALL) {
		fmt = 0;	/* Autodetect mode */
	} else if (std & V4L2_STD_NTSC_443) {
		fmt = 0xa;
	} else if (std & V4L2_STD_PAL_M) {
		fmt = 0x6;
	} else if (std & (V4L2_STD_PAL_N | V4L2_STD_PAL_Nc)) {
		fmt = 0x8;
	} else {
		/* Then, test against generic ones */
		if (std & V4L2_STD_NTSC)
			fmt = 0x2;
		else if (std & V4L2_STD_PAL)
			fmt = 0x4;
		else if (std & V4L2_STD_SECAM)
			fmt = 0xc;
	}

	FUNC2(1, debug, sd, "Set video std register to %d.\n", fmt);
	FUNC1(sd, TVP5150_VIDEO_STD, fmt);
	return 0;
}