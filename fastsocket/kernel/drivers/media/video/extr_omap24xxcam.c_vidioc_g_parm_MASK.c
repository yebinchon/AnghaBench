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
struct v4l2_streamparm {int dummy; } ;
struct omap24xxcam_fh {struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct v4l2_streamparm*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
			 struct v4l2_streamparm *a) {
	struct omap24xxcam_fh *ofh = fh;
	struct omap24xxcam_device *cam = ofh->cam;
	int rval;

	FUNC0(&cam->mutex);
	rval = FUNC2(cam->sdev, a);
	FUNC1(&cam->mutex);

	return rval;
}