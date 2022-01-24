#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct vino_channel_settings {int input; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  input_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  std; } ;

/* Variables and functions */
 int EINVAL ; 
#define  VINO_INPUT_COMPOSITE 130 
#define  VINO_INPUT_D1 129 
#define  VINO_INPUT_SVIDEO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  querystd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  video ; 
 struct vino_channel_settings* FUNC3 (struct file*) ; 
 TYPE_2__* vino_drvdata ; 
 TYPE_1__* vino_inputs ; 

__attribute__((used)) static int FUNC4(struct file *file, void *__fh,
			      v4l2_std_id *std)
{
	struct vino_channel_settings *vcs = FUNC3(file);
	unsigned long flags;
	int err = 0;

	FUNC1(&vino_drvdata->input_lock, flags);

	switch (vcs->input) {
	case VINO_INPUT_D1:
		*std = vino_inputs[vcs->input].std;
		break;
	case VINO_INPUT_COMPOSITE:
	case VINO_INPUT_SVIDEO: {
		FUNC0(video, querystd, std);
		break;
	}
	default:
		err = -EINVAL;
	}

	FUNC2(&vino_drvdata->input_lock, flags);

	return err;
}