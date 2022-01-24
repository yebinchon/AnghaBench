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
struct v4l2_queryctrl {scalar_t__ id; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ctrl_classes ; 
 int FUNC0 (struct v4l2_queryctrl*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_queryctrl *qctrl)
{
	qctrl->id = FUNC2(ctrl_classes, qctrl->id);
	if (FUNC1(qctrl->id == 0))
		return -EINVAL;
	return FUNC0(qctrl);
}