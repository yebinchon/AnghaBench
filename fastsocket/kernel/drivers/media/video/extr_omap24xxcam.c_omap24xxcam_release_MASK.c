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
struct omap24xxcam_fh {int /*<<< orphan*/  vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {TYPE_2__* sdev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  users; int /*<<< orphan*/  reset_disable; TYPE_1__* dev; struct file* streaming; } ;
struct file {struct omap24xxcam_fh* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  module; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct omap24xxcam_fh*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct omap24xxcam_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct file *file)
{
	struct omap24xxcam_fh *fh = file->private_data;
	struct omap24xxcam_device *cam = fh->cam;

	FUNC2(&cam->reset_disable);

	FUNC3();

	/* stop streaming capture */
	FUNC12(&fh->vbq);

	FUNC6(&cam->mutex);
	if (cam->streaming == file) {
		cam->streaming = NULL;
		FUNC7(&cam->mutex);
		FUNC11(&cam->dev->kobj, NULL, "streaming");
	} else {
		FUNC7(&cam->mutex);
	}

	FUNC0(&cam->reset_disable);

	FUNC10(&fh->vbq);

	/*
	 * Make sure the reset work we might have scheduled is not
	 * pending! It may be run *only* if we have users. (And it may
	 * not be scheduled anymore since streaming is already
	 * disabled.)
	 */
	FUNC3();

	FUNC6(&cam->mutex);
	if (FUNC1(&cam->users) == 0) {
		FUNC9(cam);
		FUNC8(cam);
	}
	FUNC7(&cam->mutex);

	file->private_data = NULL;

	FUNC5(cam->sdev->module);
	FUNC4(fh);

	return 0;
}