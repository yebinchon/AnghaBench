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
struct cx8802_fh {struct cx8802_dev* dev; } ;
struct cx8802_dev {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct cx8802_dev*,struct v4l2_queryctrl*) ; 
 int /*<<< orphan*/  ctrl_classes ; 
 int FUNC1 (int /*<<< orphan*/ ,struct v4l2_queryctrl*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4 (struct file *file, void *priv,
				struct v4l2_queryctrl *qctrl)
{
	struct cx8802_dev *dev  = ((struct cx8802_fh *)priv)->dev;

	if (FUNC0(dev, qctrl) == 0)
		return 0;

	qctrl->id = FUNC3(ctrl_classes, qctrl->id);
	if (FUNC2(qctrl->id == 0))
		return -EINVAL;
	return FUNC1(dev->core, qctrl);
}