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
struct v4l2_ctrl {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct v4l2_ctrl *ctrl, bool active)
{
	if (ctrl == NULL)
		return;

	if (!active)
		/* set V4L2_CTRL_FLAG_INACTIVE */
		FUNC1(4, &ctrl->flags);
	else
		/* clear V4L2_CTRL_FLAG_INACTIVE */
		FUNC0(4, &ctrl->flags);
}