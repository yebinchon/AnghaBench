#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vivi_fmt {int depth; } ;
struct vivi_fh {struct vivi_dev* dev; } ;
struct vivi_dev {int dummy; } ;
struct TYPE_3__ {int field; int width; int height; int bytesperline; int sizeimage; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;

/* Variables and functions */
 int EINVAL ; 
 int V4L2_FIELD_ANY ; 
 int V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  FUNC0 (struct vivi_dev*,int,char*,...) ; 
 struct vivi_fmt* FUNC1 (struct v4l2_format*) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*,int,unsigned int,int,int*,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
			struct v4l2_format *f)
{
	struct vivi_fh  *fh  = priv;
	struct vivi_dev *dev = fh->dev;
	struct vivi_fmt *fmt;
	enum v4l2_field field;
	unsigned int maxw, maxh;

	fmt = FUNC1(f);
	if (!fmt) {
		FUNC0(dev, 1, "Fourcc format (0x%08x) invalid.\n",
			f->fmt.pix.pixelformat);
		return -EINVAL;
	}

	field = f->fmt.pix.field;

	if (field == V4L2_FIELD_ANY) {
		field = V4L2_FIELD_INTERLACED;
	} else if (V4L2_FIELD_INTERLACED != field) {
		FUNC0(dev, 1, "Field type invalid.\n");
		return -EINVAL;
	}

	maxw  = FUNC3();
	maxh  = FUNC2();

	f->fmt.pix.field = field;
	FUNC4(&f->fmt.pix.width, 48, maxw, 2,
			      &f->fmt.pix.height, 32, maxh, 0, 0);
	f->fmt.pix.bytesperline =
		(f->fmt.pix.width * fmt->depth) >> 3;
	f->fmt.pix.sizeimage =
		f->fmt.pix.height * f->fmt.pix.bytesperline;

	return 0;
}