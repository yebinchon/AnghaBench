#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; int error_idx; TYPE_1__* controls; } ;
struct si4713_device {int dummy; } ;
struct TYPE_4__ {int id; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_CID_RDS_TX_PS_NAME 131 
#define  V4L2_CID_RDS_TX_RADIO_TEXT 130 
#define  V4L2_CID_TUNE_ANTENNA_CAPACITOR 129 
#define  V4L2_CID_TUNE_POWER_LEVEL 128 
 scalar_t__ V4L2_CTRL_CLASS_FM_TX ; 
 int FUNC0 (struct si4713_device*,TYPE_1__*) ; 
 int FUNC1 (struct si4713_device*,TYPE_1__*) ; 
 int FUNC2 (struct si4713_device*,TYPE_1__*) ; 
 struct si4713_device* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				struct v4l2_ext_controls *ctrls)
{
	struct si4713_device *sdev = FUNC3(sd);
	int i;

	if (ctrls->ctrl_class != V4L2_CTRL_CLASS_FM_TX)
		return -EINVAL;

	for (i = 0; i < ctrls->count; i++) {
		int err;

		switch ((ctrls->controls + i)->id) {
		case V4L2_CID_RDS_TX_PS_NAME:
		case V4L2_CID_RDS_TX_RADIO_TEXT:
			err = FUNC1(sdev,
							ctrls->controls + i);
			break;
		case V4L2_CID_TUNE_ANTENNA_CAPACITOR:
		case V4L2_CID_TUNE_POWER_LEVEL:
			err = FUNC2(sdev,
							ctrls->controls + i);
			break;
		default:
			err = FUNC0(sdev,
							ctrls->controls + i);
		}

		if (err < 0) {
			ctrls->error_idx = i;
			return err;
		}
	}

	return 0;
}