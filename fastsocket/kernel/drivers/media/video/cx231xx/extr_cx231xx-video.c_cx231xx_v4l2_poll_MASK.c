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
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {scalar_t__ type; int /*<<< orphan*/  vb_vidq; struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLERR ; 
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC0 (struct cx231xx*) ; 
 int FUNC1 (struct cx231xx_fh*) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned int FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *filp, poll_table *wait)
{
	struct cx231xx_fh *fh = filp->private_data;
	struct cx231xx *dev = fh->dev;
	int rc;

	rc = FUNC0(dev);
	if (rc < 0)
		return rc;

	rc = FUNC1(fh);

	if (FUNC2(rc < 0))
		return POLLERR;

	if ((V4L2_BUF_TYPE_VIDEO_CAPTURE == fh->type) ||
	    (V4L2_BUF_TYPE_VBI_CAPTURE == fh->type))
		return FUNC3(filp, &fh->vb_vidq, wait);
	else
		return POLLERR;
}