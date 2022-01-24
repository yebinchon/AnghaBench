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
struct v4l2_streamparm {int /*<<< orphan*/  type; } ;
struct omap24xxcam_fh {struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sdev; scalar_t__ streaming; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct omap24xxcam_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct v4l2_streamparm*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct v4l2_streamparm*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
			 struct v4l2_streamparm *a)
{
	struct omap24xxcam_fh *ofh = fh;
	struct omap24xxcam_device *cam = ofh->cam;
	struct v4l2_streamparm old_streamparm;
	int rval;

	FUNC0(&cam->mutex);
	if (cam->streaming) {
		rval = -EBUSY;
		goto out;
	}

	old_streamparm.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	rval = FUNC3(cam->sdev, &old_streamparm);
	if (rval)
		goto out;

	rval = FUNC4(cam->sdev, a);
	if (rval)
		goto out;

	rval = FUNC2(cam);
	/*
	 * Revert to old streaming parameters if enabling sensor
	 * interface with the new ones failed.
	 */
	if (rval)
		FUNC4(cam->sdev, &old_streamparm);

out:
	FUNC1(&cam->mutex);

	return rval;
}