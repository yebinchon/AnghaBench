#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_control {scalar_t__ id; scalar_t__ value; } ;
struct mt9v011 {scalar_t__ global_gain; scalar_t__ red_bal; scalar_t__ blue_bal; scalar_t__ hflip; scalar_t__ vflip; } ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ minimum; scalar_t__ maximum; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ERANGE ; 
#define  V4L2_CID_BLUE_BALANCE 132 
#define  V4L2_CID_GAIN 131 
#define  V4L2_CID_HFLIP 130 
#define  V4L2_CID_RED_BALANCE 129 
#define  V4L2_CID_VFLIP 128 
 int /*<<< orphan*/  debug ; 
 TYPE_1__* mt9v011_qctrl ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 struct mt9v011* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
	struct mt9v011 *core = FUNC3(sd);
	u8 i, n;
	n = FUNC0(mt9v011_qctrl);

	for (i = 0; i < n; i++) {
		if (ctrl->id != mt9v011_qctrl[i].id)
			continue;
		if (ctrl->value < mt9v011_qctrl[i].minimum ||
		    ctrl->value > mt9v011_qctrl[i].maximum)
			return -ERANGE;
		FUNC4(1, debug, sd, "s_ctrl: id=%d, value=%d\n",
					ctrl->id, ctrl->value);
		break;
	}

	switch (ctrl->id) {
	case V4L2_CID_GAIN:
		core->global_gain = ctrl->value;
		break;
	case V4L2_CID_RED_BALANCE:
		core->red_bal = ctrl->value;
		break;
	case V4L2_CID_BLUE_BALANCE:
		core->blue_bal = ctrl->value;
		break;
	case V4L2_CID_HFLIP:
		core->hflip = ctrl->value;
		FUNC2(sd);
		return 0;
	case V4L2_CID_VFLIP:
		core->vflip = ctrl->value;
		FUNC2(sd);
		return 0;
	default:
		return -EINVAL;
	}

	FUNC1(sd);

	return 0;
}