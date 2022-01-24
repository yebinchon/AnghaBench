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
struct v4l2_queryctrl {scalar_t__ id; int /*<<< orphan*/  flags; } ;
struct cx23885_dev {int /*<<< orphan*/  mpeg_params; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_CTRL_FLAG_DISABLED ; 
 int /*<<< orphan*/  ctrl_classes ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct v4l2_queryctrl*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct cx23885_dev *dev,
	struct v4l2_queryctrl *qctrl)
{
	qctrl->id = FUNC1(ctrl_classes, qctrl->id);
	if (qctrl->id == 0)
		return -EINVAL;

	/* MPEG V4L2 controls */
	if (FUNC0(&dev->mpeg_params, qctrl))
		qctrl->flags |= V4L2_CTRL_FLAG_DISABLED;

	return 0;
}