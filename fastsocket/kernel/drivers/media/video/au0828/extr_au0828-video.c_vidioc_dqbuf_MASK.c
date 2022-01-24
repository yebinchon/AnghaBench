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
struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct au0828_fh {scalar_t__ type; int /*<<< orphan*/  vb_vbiq; int /*<<< orphan*/  vb_vidq; struct au0828_dev* dev; } ;
struct au0828_dev {int greenscreen_detected; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*) ; 
 int FUNC1 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct v4l2_buffer*,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, struct v4l2_buffer *b)
{
	struct au0828_fh *fh = priv;
	struct au0828_dev *dev = fh->dev;
	int rc;

	rc = FUNC1(dev);
	if (rc < 0)
		return rc;

	/* Workaround for a bug in the au0828 hardware design that sometimes
	   results in the colorspace being inverted */
	if (dev->greenscreen_detected == 1) {
		FUNC2(1, "Detected green frame.  Resetting stream...\n");
		FUNC0(dev);
		dev->greenscreen_detected = 0;
	}

	if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		rc = FUNC3(&fh->vb_vidq, b, file->f_flags & O_NONBLOCK);
	else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE)
		rc = FUNC3(&fh->vb_vbiq, b, file->f_flags & O_NONBLOCK);

	return rc;
}