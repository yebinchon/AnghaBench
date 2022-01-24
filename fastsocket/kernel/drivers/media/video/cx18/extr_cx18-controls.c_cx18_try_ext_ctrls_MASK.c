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
struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; int error_idx; int /*<<< orphan*/ * controls; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  ana_capturing; int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_CTRL_CLASS_MPEG ; 
 scalar_t__ V4L2_CTRL_CLASS_USER ; 
 int /*<<< orphan*/  VIDIOC_TRY_EXT_CTRLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct file*,void*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v4l2_ext_controls*,int /*<<< orphan*/ ) ; 

int FUNC3(struct file *file, void *fh, struct v4l2_ext_controls *c)
{
	struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

	if (c->ctrl_class == V4L2_CTRL_CLASS_USER) {
		int i;
		int err = 0;

		for (i = 0; i < c->count; i++) {
			err = FUNC1(file, fh, &c->controls[i]);
			if (err) {
				c->error_idx = i;
				break;
			}
		}
		return err;
	}
	if (c->ctrl_class == V4L2_CTRL_CLASS_MPEG)
		return FUNC2(&cx->params,
						FUNC0(&cx->ana_capturing),
						c, VIDIOC_TRY_EXT_CTRLS);
	return -EINVAL;
}