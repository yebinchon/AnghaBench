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
struct v4l2_control {int dummy; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  s_ctrl ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_control *ctl)
{
	struct cx231xx_fh  *fh  = file->private_data;
	struct cx231xx *dev = fh->dev;
	FUNC1(3, "enter vidioc_s_ctrl()\n");
	/* Update the A/V core */
	FUNC0(dev, core, s_ctrl, ctl);
	FUNC1(3, "exit vidioc_s_ctrl()\n");
	return 0;
}