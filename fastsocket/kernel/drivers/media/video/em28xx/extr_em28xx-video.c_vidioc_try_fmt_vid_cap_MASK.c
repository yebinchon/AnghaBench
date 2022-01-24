#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int width; unsigned int height; int bytesperline; unsigned int sizeimage; int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct em28xx_fmt {int depth; int /*<<< orphan*/  fourcc; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct TYPE_4__ {scalar_t__ is_em2800; } ;
struct em28xx {int width; scalar_t__ interlaced; scalar_t__ progressive; TYPE_1__ board; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SMPTE170M ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_FIELD_TOP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct em28xx_fmt* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*,unsigned int,unsigned int,unsigned int*,unsigned int*) ; 
 unsigned int FUNC3 (struct em28xx*) ; 
 unsigned int FUNC4 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int,unsigned int,int,unsigned int*,int,unsigned int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
			struct v4l2_format *f)
{
	struct em28xx_fh      *fh    = priv;
	struct em28xx         *dev   = fh->dev;
	unsigned int          width  = f->fmt.pix.width;
	unsigned int          height = f->fmt.pix.height;
	unsigned int          maxw   = FUNC4(dev);
	unsigned int          maxh   = FUNC3(dev);
	unsigned int          hscale, vscale;
	struct em28xx_fmt     *fmt;

	fmt = FUNC1(f->fmt.pix.pixelformat);
	if (!fmt) {
		FUNC0("Fourcc format (%08x) invalid.\n",
				f->fmt.pix.pixelformat);
		return -EINVAL;
	}

	if (dev->board.is_em2800) {
		/* the em2800 can only scale down to 50% */
		height = height > (3 * maxh / 4) ? maxh : maxh / 2;
		width = width > (3 * maxw / 4) ? maxw : maxw / 2;
	} else {
		/* width must even because of the YUYV format
		   height must be even because of interlacing */
		FUNC5(&width, 48, maxw, 1, &height, 32, maxh,
				      1, 0);
	}

	FUNC2(dev, width, height, &hscale, &vscale);

	width = (((unsigned long)maxw) << 12) / (hscale + 4096L);
	height = (((unsigned long)maxh) << 12) / (vscale + 4096L);

	f->fmt.pix.width = width;
	f->fmt.pix.height = height;
	f->fmt.pix.pixelformat = fmt->fourcc;
	f->fmt.pix.bytesperline = (dev->width * fmt->depth + 7) >> 3;
	f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * height;
	f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
	if (dev->progressive)
		f->fmt.pix.field = V4L2_FIELD_NONE;
	else
		f->fmt.pix.field = dev->interlaced ?
			   V4L2_FIELD_INTERLACED : V4L2_FIELD_TOP;

	return 0;
}