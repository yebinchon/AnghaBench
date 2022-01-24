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
typedef  int (* v4l2_kioctl ) (struct file*,int /*<<< orphan*/ ,struct v4l2_queryctrl*) ;
struct v4l2_queryctrl {int id; int flags; int value; int minimum; int maximum; } ;
struct v4l2_control {int id; int flags; int value; int minimum; int maximum; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int V4L2_CTRL_FLAG_DISABLED ; 
 int /*<<< orphan*/  VIDIOC_G_CTRL ; 
 int /*<<< orphan*/  VIDIOC_QUERYCTRL ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int
FUNC2(struct file             *file,
		int			cid,
		v4l2_kioctl             drv)
{
	struct v4l2_queryctrl	qctrl2;
	struct v4l2_control	ctrl2;
	int			err;

	qctrl2.id = cid;
	err = drv(file, VIDIOC_QUERYCTRL, &qctrl2);
	if (err < 0)
		FUNC1("VIDIOC_QUERYCTRL: %d\n", err);
	if (err == 0 && !(qctrl2.flags & V4L2_CTRL_FLAG_DISABLED)) {
		ctrl2.id = qctrl2.id;
		err = drv(file, VIDIOC_G_CTRL, &ctrl2);
		if (err < 0) {
			FUNC1("VIDIOC_G_CTRL: %d\n", err);
			return 0;
		}
		return FUNC0((ctrl2.value-qctrl2.minimum) * 65535,
					 qctrl2.maximum - qctrl2.minimum);
	}
	return 0;
}