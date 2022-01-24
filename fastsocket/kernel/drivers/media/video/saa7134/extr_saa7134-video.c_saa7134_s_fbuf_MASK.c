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
struct TYPE_2__ {int bytesperline; int width; int /*<<< orphan*/  pixelformat; } ;
struct v4l2_framebuffer {TYPE_1__ fmt; } ;
struct saa7134_format {int depth; } ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {struct v4l2_framebuffer ovbuf; struct saa7134_format* ovfmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct saa7134_format* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *f,
					struct v4l2_framebuffer *fb)
{
	struct saa7134_fh *fh = f;
	struct saa7134_dev *dev = fh->dev;
	struct saa7134_format *fmt;

	if (!FUNC0(CAP_SYS_ADMIN) &&
	   !FUNC0(CAP_SYS_RAWIO))
		return -EPERM;

	/* check args */
	fmt = FUNC1(fb->fmt.pixelformat);
	if (NULL == fmt)
		return -EINVAL;

	/* ok, accept it */
	dev->ovbuf = *fb;
	dev->ovfmt = fmt;
	if (0 == dev->ovbuf.fmt.bytesperline)
		dev->ovbuf.fmt.bytesperline =
			dev->ovbuf.fmt.width*fmt->depth/8;
	return 0;
}