#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vpfe_pixel_format {int dummy; } ;
struct vpfe_device {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC1 (struct file*) ; 
 struct vpfe_pixel_format* FUNC2 (struct vpfe_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				  struct v4l2_format *f)
{
	struct vpfe_device *vpfe_dev = FUNC1(file);
	const struct vpfe_pixel_format *pix_fmts;

	FUNC0(1, debug, &vpfe_dev->v4l2_dev, "vpfe_try_fmt_vid_cap\n");

	pix_fmts = FUNC2(vpfe_dev, &f->fmt.pix);
	if (NULL == pix_fmts)
		return -EINVAL;
	return 0;
}