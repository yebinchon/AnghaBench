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
struct v4l2_queryctrl {int id; int /*<<< orphan*/  default_value; int /*<<< orphan*/  maximum; int /*<<< orphan*/  minimum; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_AUTOGAIN 132 
#define  V4L2_CID_BRIGHTNESS 131 
#define  V4L2_CID_CONTRAST 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct v4l2_queryctrl*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct v4l2_subdev *sd, struct v4l2_queryctrl *qctrl)
{
	int err = -EINVAL;

	if (qctrl == NULL)
		return err;

	switch (qctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		/* Brightness supported is (0-255), */
		err = FUNC0(qctrl, 0, 255, 1, 128);
		break;
	case V4L2_CID_CONTRAST:
	case V4L2_CID_SATURATION:
		/**
		 * Saturation and Contrast supported is -
		 *	Contrast: 0 - 255 (Default - 128)
		 *	Saturation: 0 - 255 (Default - 128)
		 */
		err = FUNC0(qctrl, 0, 255, 1, 128);
		break;
	case V4L2_CID_HUE:
		/* Hue Supported is -
		 *	Hue - -180 - +180 (Default - 0, Step - +180)
		 */
		err = FUNC0(qctrl, -180, 180, 180, 0);
		break;
	case V4L2_CID_AUTOGAIN:
		/**
		 * Auto Gain supported is -
		 * 	0 - 1 (Default - 1)
		 */
		err = FUNC0(qctrl, 0, 1, 1, 1);
		break;
	default:
		FUNC2(sd, "invalid control id %d\n", qctrl->id);
		return err;
	}

	FUNC1(1, debug, sd, "Query Control:%s: Min - %d, Max - %d, Def - %d",
			qctrl->name, qctrl->minimum, qctrl->maximum,
			qctrl->default_value);

	return err;
}