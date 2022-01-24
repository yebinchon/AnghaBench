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
struct v4l2_fmtdesc {int index; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  description; scalar_t__ flags; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_FMT_FLAG_COMPRESSED ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_MJPEG ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_YUYV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *fh,
				struct v4l2_fmtdesc *f)
{
	if (f->index > 1)
		return -EINVAL;

	if (f->index == 0) {
		/* standard YUV 422 capture */
		f->flags = 0;
		FUNC0(f->description, "YUV422");
		f->pixelformat = V4L2_PIX_FMT_YUYV;
	} else {
		/* compressed MJPEG capture */
		f->flags = V4L2_FMT_FLAG_COMPRESSED;
		FUNC0(f->description, "MJPEG");
		f->pixelformat = V4L2_PIX_FMT_MJPEG;
	}

	return 0;
}