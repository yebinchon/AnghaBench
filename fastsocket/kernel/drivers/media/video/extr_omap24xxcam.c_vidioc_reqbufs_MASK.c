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
struct v4l2_requestbuffers {scalar_t__ memory; } ;
struct omap24xxcam_fh {int /*<<< orphan*/  vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int /*<<< orphan*/  mutex; scalar_t__ streaming; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct v4l2_requestbuffers*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
			  struct v4l2_requestbuffers *b)
{
	struct omap24xxcam_fh *ofh = fh;
	struct omap24xxcam_device *cam = ofh->cam;
	int rval;

	FUNC0(&cam->mutex);
	if (cam->streaming) {
		FUNC1(&cam->mutex);
		return -EBUSY;
	}

	FUNC3(&ofh->vbq);
	FUNC1(&cam->mutex);

	rval = FUNC4(&ofh->vbq, b);

	/*
	 * Either videobuf_reqbufs failed or the buffers are not
	 * memory-mapped (which would need special attention).
	 */
	if (rval < 0 || b->memory != V4L2_MEMORY_MMAP)
		goto out;

	rval = FUNC2(&ofh->vbq, rval);
	if (rval)
		FUNC3(&ofh->vbq);

out:
	return rval;
}