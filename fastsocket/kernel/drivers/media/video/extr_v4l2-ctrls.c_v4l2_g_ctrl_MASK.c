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
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;
struct v4l2_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct v4l2_ctrl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ctrl*) ; 
 struct v4l2_ctrl* FUNC2 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ ) ; 

int FUNC3(struct v4l2_ctrl_handler *hdl, struct v4l2_control *control)
{
	struct v4l2_ctrl *ctrl = FUNC2(hdl, control->id);

	if (ctrl == NULL || !FUNC1(ctrl))
		return -EINVAL;
	return FUNC0(ctrl, &control->value);
}