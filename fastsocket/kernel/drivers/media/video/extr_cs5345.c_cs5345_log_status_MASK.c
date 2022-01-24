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
 int FUNC0 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*,int,...) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	u8 v = FUNC0(sd, 0x09) & 7;
	u8 m = FUNC0(sd, 0x04);
	int vol = FUNC0(sd, 0x08) & 0x3f;

	FUNC1(sd, "Input:  %d%s\n", v,
			(m & 0x80) ? " (muted)" : "");
	if (vol >= 32)
		vol = vol - 64;
	FUNC1(sd, "Volume: %d dB\n", vol);
	return 0;
}