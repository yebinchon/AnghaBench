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
struct vpx3220 {int /*<<< orphan*/  hue; int /*<<< orphan*/  sat; int /*<<< orphan*/  contrast; int /*<<< orphan*/  bright; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_BRIGHTNESS 131 
#define  V4L2_CID_CONTRAST 130 
#define  V4L2_CID_HUE 129 
#define  V4L2_CID_SATURATION 128 
 struct vpx3220* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	struct vpx3220 *decoder = FUNC0(sd);

	switch (ctrl->id) {
	case V4L2_CID_BRIGHTNESS:
		if (decoder->bright != ctrl->value) {
			decoder->bright = ctrl->value;
			FUNC2(sd, 0xe6, decoder->bright);
		}
		break;
	case V4L2_CID_CONTRAST:
		if (decoder->contrast != ctrl->value) {
			/* Bit 7 and 8 is for noise shaping */
			decoder->contrast = ctrl->value;
			FUNC2(sd, 0xe7, decoder->contrast + 192);
		}
		break;
	case V4L2_CID_SATURATION:
		if (decoder->sat != ctrl->value) {
			decoder->sat = ctrl->value;
			FUNC1(sd, 0xa0, decoder->sat);
		}
		break;
	case V4L2_CID_HUE:
		if (decoder->hue != ctrl->value) {
			decoder->hue = ctrl->value;
			FUNC1(sd, 0x1c, decoder->hue);
		}
		break;
	default:
		return -EINVAL;
	}
	return 0;
}