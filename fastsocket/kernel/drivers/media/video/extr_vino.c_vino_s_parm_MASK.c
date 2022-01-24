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
struct vino_channel_settings {int dummy; } ;
struct TYPE_4__ {int numerator; int denominator; } ;
struct v4l2_captureparm {TYPE_1__ timeperframe; } ;
struct TYPE_5__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  input_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vino_channel_settings* FUNC2 (struct file*) ; 
 TYPE_3__* vino_drvdata ; 
 int /*<<< orphan*/  FUNC3 (struct vino_channel_settings*) ; 
 int /*<<< orphan*/  FUNC4 (struct vino_channel_settings*,int) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *__fh,
			    struct v4l2_streamparm *sp)
{
	struct vino_channel_settings *vcs = FUNC2(file);
	unsigned long flags;
	struct v4l2_captureparm *cp = &sp->parm.capture;

	FUNC0(&vino_drvdata->input_lock, flags);

	if ((cp->timeperframe.numerator == 0) ||
	    (cp->timeperframe.denominator == 0)) {
		/* reset framerate */
		FUNC3(vcs);
	} else {
		FUNC4(vcs, cp->timeperframe.denominator /
				   cp->timeperframe.numerator);
	}

	FUNC1(&vino_drvdata->input_lock, flags);

	return 0;
}