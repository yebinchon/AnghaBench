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
struct em28xx_fh {int type; int /*<<< orphan*/  vb_vbiq; int /*<<< orphan*/  vb_vidq; int /*<<< orphan*/  resources; struct em28xx* dev; } ;
struct em28xx {int /*<<< orphan*/  resources; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC0 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct em28xx_fh*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct em28xx_fh*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
					enum v4l2_buf_type type)
{
	struct em28xx_fh      *fh  = priv;
	struct em28xx         *dev = fh->dev;
	int                   rc = -EINVAL;

	rc = FUNC0(dev);
	if (rc < 0)
		return rc;

	if (FUNC4(type != fh->type))
		return -EINVAL;

	FUNC1("vidioc_streamon fh=%p t=%d fh->res=%d dev->res=%d\n",
			fh, type, fh->resources, dev->resources);

	if (FUNC4(!FUNC3(fh, FUNC2(fh))))
		return -EBUSY;

	if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		rc = FUNC5(&fh->vb_vidq);
	else if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE)
		rc = FUNC5(&fh->vb_vbiq);

	return rc;
}