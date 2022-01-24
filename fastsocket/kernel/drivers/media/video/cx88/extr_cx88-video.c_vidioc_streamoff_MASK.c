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
struct file {int dummy; } ;
struct cx8800_fh {scalar_t__ type; struct cx8800_dev* dev; } ;
struct cx8800_dev {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct cx8800_fh*) ; 
 int FUNC1 (struct cx8800_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx8800_dev*,struct cx8800_fh*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, enum v4l2_buf_type i)
{
	struct cx8800_fh  *fh   = priv;
	struct cx8800_dev *dev  = fh->dev;
	int               err, res;

	if ((fh->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
	    (fh->type != V4L2_BUF_TYPE_VBI_CAPTURE))
		return -EINVAL;

	if (i != fh->type)
		return -EINVAL;

	res = FUNC1(fh);
	err = FUNC3(FUNC0(fh));
	if (err < 0)
		return err;
	FUNC2(dev,fh,res);
	return 0;
}