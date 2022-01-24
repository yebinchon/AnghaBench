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
struct v4l2_ext_controls {scalar_t__ ctrl_class; } ;
struct file {int dummy; } ;
struct cx2341x_mpeg_params {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {struct cx2341x_mpeg_params mpeg_params; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_CTRL_CLASS_MPEG ; 
 int /*<<< orphan*/  VIDIOC_TRY_EXT_CTRLS ; 
 int FUNC0 (struct cx2341x_mpeg_params*,int /*<<< orphan*/ ,struct v4l2_ext_controls*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_ext_controls *f)
{
	struct cx231xx_fh  *fh  = priv;
	struct cx231xx *dev = fh->dev;
	struct cx2341x_mpeg_params p;
	int err;
	FUNC1(3, "enter vidioc_try_ext_ctrls()\n");
	if (f->ctrl_class != V4L2_CTRL_CLASS_MPEG)
		return -EINVAL;

	p = dev->mpeg_params;
	err = FUNC0(&p, 0, f, VIDIOC_TRY_EXT_CTRLS);
	FUNC1(3, "exit vidioc_try_ext_ctrls() err=%d\n", err);
	return err;
}