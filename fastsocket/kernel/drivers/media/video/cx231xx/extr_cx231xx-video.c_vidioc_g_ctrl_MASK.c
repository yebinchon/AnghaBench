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
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_control*) ; 
 int FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  g_ctrl ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			 struct v4l2_control *ctrl)
{
	struct cx231xx_fh *fh = priv;
	struct cx231xx *dev = fh->dev;
	int rc;

	rc = FUNC1(dev);
	if (rc < 0)
		return rc;

	FUNC0(dev, core, g_ctrl, ctrl);
	return rc;
}