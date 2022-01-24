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
struct TYPE_2__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct vpfe_device {int /*<<< orphan*/  lock; struct v4l2_format fmt; int /*<<< orphan*/  v4l2_dev; scalar_t__ started; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC4 (struct file*) ; 
 struct vpfe_pixel_format* FUNC5 (struct vpfe_device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct vpfe_device*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv,
				struct v4l2_format *fmt)
{
	struct vpfe_device *vpfe_dev = FUNC4(file);
	const struct vpfe_pixel_format *pix_fmts;
	int ret = 0;

	FUNC2(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_fmt_vid_cap\n");

	/* If streaming is started, return error */
	if (vpfe_dev->started) {
		FUNC3(&vpfe_dev->v4l2_dev, "Streaming is started\n");
		return -EBUSY;
	}

	/* Check for valid frame format */
	pix_fmts = FUNC5(vpfe_dev, &fmt->fmt.pix);

	if (NULL == pix_fmts)
		return -EINVAL;

	/* store the pixel format in the device  object */
	ret = FUNC0(&vpfe_dev->lock);
	if (ret)
		return ret;

	/* First detach any IRQ if currently attached */
	FUNC7(vpfe_dev);
	vpfe_dev->fmt = *fmt;
	/* set image capture parameters in the ccdc */
	ret = FUNC6(vpfe_dev);
	FUNC1(&vpfe_dev->lock);
	return ret;
}