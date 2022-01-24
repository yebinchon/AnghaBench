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
struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUTOGAIN 137 
#define  V4L2_CID_BRIGHTNESS 136 
#define  V4L2_CID_CONTRAST 135 
#define  V4L2_CID_EXPOSURE 134 
#define  V4L2_CID_EXPOSURE_AUTO 133 
#define  V4L2_CID_GAIN 132 
#define  V4L2_CID_HFLIP 131 
#define  V4L2_CID_HUE 130 
#define  V4L2_CID_SATURATION 129 
#define  V4L2_CID_VFLIP 128 
 int FUNC0 (struct v4l2_queryctrl*,int,int,int,int) ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *sd,
		struct v4l2_queryctrl *qc)
{
	/* Fill in min, max, step and default value for these controls. */
	switch (qc->id) {
	case V4L2_CID_BRIGHTNESS:
		return FUNC0(qc, 0, 255, 1, 128);
	case V4L2_CID_CONTRAST:
		return FUNC0(qc, 0, 127, 1, 64);
	case V4L2_CID_VFLIP:
	case V4L2_CID_HFLIP:
		return FUNC0(qc, 0, 1, 1, 0);
	case V4L2_CID_SATURATION:
		return FUNC0(qc, 0, 256, 1, 128);
	case V4L2_CID_HUE:
		return FUNC0(qc, -180, 180, 5, 0);
	case V4L2_CID_GAIN:
		return FUNC0(qc, 0, 255, 1, 128);
	case V4L2_CID_AUTOGAIN:
		return FUNC0(qc, 0, 1, 1, 1);
	case V4L2_CID_EXPOSURE:
		return FUNC0(qc, 0, 65535, 1, 500);
	case V4L2_CID_EXPOSURE_AUTO:
		return FUNC0(qc, 0, 1, 1, 0);
	}
	return -EINVAL;
}