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
struct v4l2_queryctrl {scalar_t__ type; int /*<<< orphan*/  id; } ;
struct v4l2_ext_control {int /*<<< orphan*/  id; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ V4L2_CTRL_TYPE_MENU ; 
 int FUNC0 (struct file*,void*,struct v4l2_queryctrl*) ; 
 int FUNC1 (struct v4l2_ext_control*,struct v4l2_queryctrl*,char const* const*) ; 
 char** FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
					struct v4l2_ext_control *vctrl)
{
	struct v4l2_queryctrl qctrl;
	const char * const *menu_items = NULL;
	int err;

	qctrl.id = vctrl->id;
	err = FUNC0(file, fh, &qctrl);
	if (err)
		return err;
	if (qctrl.type == V4L2_CTRL_TYPE_MENU)
		menu_items = FUNC2(qctrl.id);
	return FUNC1(vctrl, &qctrl, menu_items);
}