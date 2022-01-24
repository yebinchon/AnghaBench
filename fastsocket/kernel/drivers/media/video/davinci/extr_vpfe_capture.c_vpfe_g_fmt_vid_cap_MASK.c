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
struct v4l2_format {int dummy; } ;
struct vpfe_device {struct v4l2_format fmt; int /*<<< orphan*/  v4l2_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_format *fmt)
{
	struct vpfe_device *vpfe_dev = FUNC1(file);
	int ret = 0;

	FUNC0(1, debug, &vpfe_dev->v4l2_dev, "vpfe_g_fmt_vid_cap\n");
	/* Fill in the information about format */
	*fmt = vpfe_dev->fmt;
	return ret;
}