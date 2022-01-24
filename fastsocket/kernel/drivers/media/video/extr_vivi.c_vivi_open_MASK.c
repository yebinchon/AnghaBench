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
struct vivi_fh {size_t type; int width; int height; int /*<<< orphan*/  vb_vidq; int /*<<< orphan*/ * fmt; struct vivi_dev* dev; } ;
struct vivi_dev {int users; int h; int m; int s; int ms; int /*<<< orphan*/  slock; int /*<<< orphan*/  timestr; int /*<<< orphan*/  jiffies; scalar_t__ mv_count; int /*<<< orphan*/  mutex; TYPE_1__* vfd; } ;
struct vivi_buffer {int dummy; } ;
struct file {struct vivi_fh* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  FUNC0 (struct vivi_dev*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * formats ; 
 int /*<<< orphan*/  jiffies ; 
 struct vivi_fh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/ * v4l2_type_names ; 
 struct vivi_dev* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,struct vivi_fh*) ; 
 int /*<<< orphan*/  FUNC7 (struct vivi_fh*) ; 
 int /*<<< orphan*/  vivi_video_qops ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct vivi_dev *dev = FUNC5(file);
	struct vivi_fh *fh = NULL;
	int retval = 0;

	FUNC2(&dev->mutex);
	dev->users++;

	if (dev->users > 1) {
		dev->users--;
		FUNC3(&dev->mutex);
		return -EBUSY;
	}

	FUNC0(dev, 1, "open /dev/video%d type=%s users=%d\n", dev->vfd->num,
		v4l2_type_names[V4L2_BUF_TYPE_VIDEO_CAPTURE], dev->users);

	/* allocate + initialize per filehandle data */
	fh = FUNC1(sizeof(*fh), GFP_KERNEL);
	if (NULL == fh) {
		dev->users--;
		retval = -ENOMEM;
	}
	FUNC3(&dev->mutex);

	if (retval)
		return retval;

	file->private_data = fh;
	fh->dev      = dev;

	fh->type     = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	fh->fmt      = &formats[0];
	fh->width    = 640;
	fh->height   = 480;

	/* Resets frame counters */
	dev->h = 0;
	dev->m = 0;
	dev->s = 0;
	dev->ms = 0;
	dev->mv_count = 0;
	dev->jiffies = jiffies;
	FUNC4(dev->timestr, "%02d:%02d:%02d:%03d",
			dev->h, dev->m, dev->s, dev->ms);

	FUNC6(&fh->vb_vidq, &vivi_video_qops,
			NULL, &dev->slock, fh->type, V4L2_FIELD_INTERLACED,
			sizeof(struct vivi_buffer), fh);

	FUNC7(fh);

	return 0;
}