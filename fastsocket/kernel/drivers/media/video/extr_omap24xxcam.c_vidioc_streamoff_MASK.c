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
struct videobuf_queue {int dummy; } ;
struct omap24xxcam_fh {struct videobuf_queue vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int /*<<< orphan*/  reset_disable; TYPE_1__* dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * streaming; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct videobuf_queue*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *fh, enum v4l2_buf_type i)
{
	struct omap24xxcam_fh *ofh = fh;
	struct omap24xxcam_device *cam = ofh->cam;
	struct videobuf_queue *q = &ofh->vbq;
	int rval;

	FUNC1(&cam->reset_disable);

	FUNC2();

	rval = FUNC6(q);
	if (!rval) {
		FUNC3(&cam->mutex);
		cam->streaming = NULL;
		FUNC4(&cam->mutex);
		FUNC5(&cam->dev->kobj, NULL, "streaming");
	}

	FUNC0(&cam->reset_disable);

	return rval;
}