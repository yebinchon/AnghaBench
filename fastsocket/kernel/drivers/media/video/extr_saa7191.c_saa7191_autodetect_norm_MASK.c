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
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int SAA7191_STATUS_FIDT ; 
 int SAA7191_STATUS_HLCK ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int /*<<< orphan*/  V4L2_STD_PAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*,int*) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	u8 status;

	FUNC0("SAA7191 signal auto-detection...\n");

	FUNC0("Reading status...\n");

	if (FUNC1(sd, &status))
		return -EIO;

	FUNC0("Checking for signal...\n");

	/* no signal ? */
	if (status & SAA7191_STATUS_HLCK) {
		FUNC0("No signal\n");
		return -EBUSY;
	}

	FUNC0("Signal found\n");

	if (status & SAA7191_STATUS_FIDT) {
		/* 60hz signal -> NTSC */
		FUNC0("NTSC\n");
		return FUNC2(sd, V4L2_STD_NTSC);
	} else {
		/* 50hz signal -> PAL */
		FUNC0("PAL\n");
		return FUNC2(sd, V4L2_STD_PAL);
	}
}