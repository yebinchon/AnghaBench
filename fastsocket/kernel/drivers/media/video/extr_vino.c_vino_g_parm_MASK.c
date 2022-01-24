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
struct vino_channel_settings {int /*<<< orphan*/  fps; } ;
struct TYPE_5__ {int numerator; int /*<<< orphan*/  denominator; } ;
struct v4l2_captureparm {TYPE_2__ timeperframe; int /*<<< orphan*/  capability; } ;
struct TYPE_4__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_1__ parm; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  input_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CAP_TIMEPERFRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vino_channel_settings* FUNC2 (struct file*) ; 
 TYPE_3__* vino_drvdata ; 

__attribute__((used)) static int FUNC3(struct file *file, void *__fh,
			    struct v4l2_streamparm *sp)
{
	struct vino_channel_settings *vcs = FUNC2(file);
	unsigned long flags;
	struct v4l2_captureparm *cp = &sp->parm.capture;

	cp->capability = V4L2_CAP_TIMEPERFRAME;
	cp->timeperframe.numerator = 1;

	FUNC0(&vino_drvdata->input_lock, flags);

	cp->timeperframe.denominator = vcs->fps;

	FUNC1(&vino_drvdata->input_lock, flags);

	/* TODO: cp->readbuffers = xxx; */

	return 0;
}