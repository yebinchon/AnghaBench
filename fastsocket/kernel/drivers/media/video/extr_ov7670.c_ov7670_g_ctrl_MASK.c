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
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;

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
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	switch (ctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		return FUNC2(sd, &ctrl->value);
	case V4L2_CID_CONTRAST:
		return FUNC3(sd, &ctrl->value);
	case V4L2_CID_SATURATION:
		return FUNC8(sd, &ctrl->value);
	case V4L2_CID_HUE:
		return FUNC7(sd, &ctrl->value);
	case V4L2_CID_VFLIP:
		return FUNC9(sd, &ctrl->value);
	case V4L2_CID_HFLIP:
		return FUNC6(sd, &ctrl->value);
	case V4L2_CID_GAIN:
		return FUNC5(sd, &ctrl->value);
	case V4L2_CID_AUTOGAIN:
		return FUNC1(sd, &ctrl->value);
	case V4L2_CID_EXPOSURE:
		return FUNC4(sd, &ctrl->value);
	case V4L2_CID_EXPOSURE_AUTO:
		return FUNC0(sd, &ctrl->value);
	}
	return -EINVAL;
}