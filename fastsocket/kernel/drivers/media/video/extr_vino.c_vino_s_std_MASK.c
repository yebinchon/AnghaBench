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
typedef  int v4l2_std_id ;
struct vino_channel_settings {size_t input; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  input_lock; } ;
struct TYPE_3__ {int std; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_PAL ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  VINO_DATA_NORM_NTSC ; 
 int /*<<< orphan*/  VINO_DATA_NORM_PAL ; 
 int /*<<< orphan*/  VINO_DATA_NORM_SECAM ; 
 size_t VINO_INPUT_D1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vino_channel_settings* FUNC3 (struct file*) ; 
 TYPE_2__* vino_drvdata ; 
 TYPE_1__* vino_inputs ; 
 int /*<<< orphan*/  FUNC4 (struct vino_channel_settings*) ; 
 int FUNC5 (struct vino_channel_settings*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *__fh,
			   v4l2_std_id *std)
{
	struct vino_channel_settings *vcs = FUNC3(file);
	unsigned long flags;
	int ret = 0;

	FUNC1(&vino_drvdata->input_lock, flags);

	if (!FUNC4(vcs)) {
		ret = -EBUSY;
		goto out;
	}

	/* check if the standard is valid for the current input */
	if ((*std) & vino_inputs[vcs->input].std) {
		FUNC0("standard accepted\n");

		/* change the video norm for SAA7191
		 * and accept NTSC for D1 (do nothing) */

		if (vcs->input == VINO_INPUT_D1)
			goto out;

		if ((*std) & V4L2_STD_PAL) {
			ret = FUNC5(vcs, VINO_DATA_NORM_PAL,
						 &flags);
		} else if ((*std) & V4L2_STD_NTSC) {
			ret = FUNC5(vcs, VINO_DATA_NORM_NTSC,
						 &flags);
		} else if ((*std) & V4L2_STD_SECAM) {
			ret = FUNC5(vcs, VINO_DATA_NORM_SECAM,
						 &flags);
		} else {
			ret = -EINVAL;
		}

		if (ret) {
			ret = -EINVAL;
		}
	} else {
		ret = -EINVAL;
	}

out:
	FUNC2(&vino_drvdata->input_lock, flags);

	return ret;
}