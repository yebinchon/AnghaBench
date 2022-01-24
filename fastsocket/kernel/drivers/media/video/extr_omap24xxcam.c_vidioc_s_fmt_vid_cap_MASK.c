#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  vb_lock; } ;
struct omap24xxcam_fh {TYPE_2__ vbq; int /*<<< orphan*/  pix; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sdev; scalar_t__ streaming; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_format*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,void*,struct v4l2_format*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
				struct v4l2_format *f)
{
	struct omap24xxcam_fh *ofh = fh;
	struct omap24xxcam_device *cam = ofh->cam;
	int rval;

	FUNC1(&cam->mutex);
	if (cam->streaming) {
		rval = -EBUSY;
		goto out;
	}

	rval = FUNC4(cam->sdev, f);

out:
	FUNC2(&cam->mutex);

	if (!rval) {
		FUNC1(&ofh->vbq.vb_lock);
		ofh->pix = f->fmt.pix;
		FUNC2(&ofh->vbq.vb_lock);
	}

	FUNC0(f, 0, sizeof(*f));
	FUNC3(file, fh, f);

	return rval;
}