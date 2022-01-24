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
struct TYPE_4__ {int clipcount; int /*<<< orphan*/  clips; } ;
struct TYPE_5__ {TYPE_1__ win; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct v4l2_clip {int dummy; } ;
struct saa7146_vv {int dummy; } ;
struct TYPE_6__ {int nclips; struct saa7146_fh* fh; int /*<<< orphan*/  clips; TYPE_1__ win; } ;
struct saa7146_fh {TYPE_3__ ov; struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EFAULT ; 
 scalar_t__ FUNC1 (struct saa7146_fh*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_fh*) ; 
 int FUNC5 (struct file*,struct saa7146_fh*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *__fh, struct v4l2_format *f)
{
	struct saa7146_fh *fh = __fh;
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_vv *vv = dev->vv_data;
	int err;

	FUNC0(("V4L2_BUF_TYPE_VIDEO_OVERLAY: dev:%p, fh:%p\n", dev, fh));
	err = FUNC5(file, fh, f);
	if (0 != err)
		return err;
	fh->ov.win    = f->fmt.win;
	fh->ov.nclips = f->fmt.win.clipcount;
	if (fh->ov.nclips > 16)
		fh->ov.nclips = 16;
	if (FUNC2(fh->ov.clips, f->fmt.win.clips,
				sizeof(struct v4l2_clip) * fh->ov.nclips)) {
		return -EFAULT;
	}

	/* fh->ov.fh is used to indicate that we have valid overlay informations, too */
	fh->ov.fh = fh;

	/* check if our current overlay is active */
	if (FUNC1(fh) != 0) {
		FUNC4(fh);
		FUNC3(fh);
	}
	return 0;
}