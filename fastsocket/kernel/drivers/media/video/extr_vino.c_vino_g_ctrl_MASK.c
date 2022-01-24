#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vino_channel_settings {int input; } ;
struct v4l2_control {int /*<<< orphan*/  id; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  input_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int VINO_INDYCAM_V4L2_CONTROL_COUNT ; 
#define  VINO_INPUT_COMPOSITE 130 
#define  VINO_INPUT_D1 129 
#define  VINO_INPUT_SVIDEO 128 
 int VINO_SAA7191_V4L2_CONTROL_COUNT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 
 int /*<<< orphan*/  core ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 
 int /*<<< orphan*/  g_ctrl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vino_channel_settings* FUNC4 (struct file*) ; 
 TYPE_3__* vino_drvdata ; 
 TYPE_2__* vino_indycam_v4l2_controls ; 
 TYPE_1__* vino_saa7191_v4l2_controls ; 

__attribute__((used)) static int FUNC5(struct file *file, void *__fh,
			    struct v4l2_control *control)
{
	struct vino_channel_settings *vcs = FUNC4(file);
	unsigned long flags;
	int i;
	int err = 0;

	FUNC2(&vino_drvdata->input_lock, flags);

	switch (vcs->input) {
	case VINO_INPUT_D1: {
		err = -EINVAL;
		for (i = 0; i < VINO_INDYCAM_V4L2_CONTROL_COUNT; i++) {
			if (vino_indycam_v4l2_controls[i].id == control->id) {
				err = 0;
				break;
			}
		}

		if (err)
			goto out;

		err = FUNC0(core, g_ctrl, control);
		if (err)
			err = -EINVAL;
		break;
	}
	case VINO_INPUT_COMPOSITE:
	case VINO_INPUT_SVIDEO: {
		err = -EINVAL;
		for (i = 0; i < VINO_SAA7191_V4L2_CONTROL_COUNT; i++) {
			if (vino_saa7191_v4l2_controls[i].id == control->id) {
				err = 0;
				break;
			}
		}

		if (err)
			goto out;

		err = FUNC1(core, g_ctrl, control);
		if (err)
			err = -EINVAL;
		break;
	}
	default:
		err =  -EINVAL;
	}

out:
	FUNC3(&vino_drvdata->input_lock, flags);

	return err;
}