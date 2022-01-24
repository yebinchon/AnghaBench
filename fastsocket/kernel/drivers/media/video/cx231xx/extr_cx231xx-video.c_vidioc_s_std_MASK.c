#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  struct v4l2_mbus_framefmt* v4l2_std_id ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int /*<<< orphan*/  height; int /*<<< orphan*/  width; struct v4l2_mbus_framefmt* norm; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_MBUS_FMT_FIXED ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 int FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  s_mbus_fmt ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_mbus_framefmt*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  video ; 
 int /*<<< orphan*/  FUNC6 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *priv, v4l2_std_id *norm)
{
	struct cx231xx_fh *fh = priv;
	struct cx231xx *dev = fh->dev;
	struct v4l2_mbus_framefmt mbus_fmt;
	struct v4l2_format f;
	int rc;

	rc = FUNC1(dev);
	if (rc < 0)
		return rc;

	FUNC3("vidioc_s_std : 0x%x\n", (unsigned int)*norm);

	dev->norm = *norm;

	/* Adjusts width/height, if needed */
	f.fmt.pix.width = dev->width;
	f.fmt.pix.height = dev->height;
	FUNC6(file, priv, &f);

	FUNC0(dev, core, s_std, dev->norm);

	/* We need to reset basic properties in the decoder related to
	   resolution (since a standard change effects things like the number
	   of lines in VACT, etc) */
	FUNC4(&mbus_fmt, &f.fmt.pix, V4L2_MBUS_FMT_FIXED);
	FUNC0(dev, video, s_mbus_fmt, &mbus_fmt);
	FUNC5(&f.fmt.pix, &mbus_fmt);

	/* set new image size */
	dev->width = f.fmt.pix.width;
	dev->height = f.fmt.pix.height;

	/* do mode control overrides */
	FUNC2(dev);

	return 0;
}