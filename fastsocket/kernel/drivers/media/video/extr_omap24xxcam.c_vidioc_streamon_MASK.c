#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct omap24xxcam_fh {int /*<<< orphan*/  vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int /*<<< orphan*/  mutex; TYPE_1__* dev; struct file* streaming; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *fh, enum v4l2_buf_type i)
{
	struct omap24xxcam_fh *ofh = fh;
	struct omap24xxcam_device *cam = ofh->cam;
	int rval;

	FUNC1(&cam->mutex);
	if (cam->streaming) {
		rval = -EBUSY;
		goto out;
	}

	rval = FUNC3(cam);
	if (rval) {
		FUNC0(cam->dev, "vidioc_int_g_ifparm failed\n");
		goto out;
	}

	rval = FUNC5(&ofh->vbq);
	if (!rval) {
		cam->streaming = file;
		FUNC4(&cam->dev->kobj, NULL, "streaming");
	}

out:
	FUNC2(&cam->mutex);

	return rval;
}