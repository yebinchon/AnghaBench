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
struct em28xx_fh {scalar_t__ type; int /*<<< orphan*/  vb_vbiq; int /*<<< orphan*/  vb_vidq; struct em28xx* dev; } ;
struct em28xx {int dummy; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC0 (struct em28xx*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct v4l2_buffer*,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv, struct v4l2_buffer *b)
{
	struct em28xx_fh      *fh  = priv;
	struct em28xx         *dev = fh->dev;
	int                   rc;

	rc = FUNC0(dev);
	if (rc < 0)
		return rc;

	if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		return FUNC1(&fh->vb_vidq, b, file->f_flags &
				      O_NONBLOCK);
	else
		return FUNC1(&fh->vb_vbiq, b, file->f_flags &
				      O_NONBLOCK);
}