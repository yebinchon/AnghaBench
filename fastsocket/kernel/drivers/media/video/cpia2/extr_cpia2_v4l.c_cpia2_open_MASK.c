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
struct file {struct cpia2_fh* private_data; } ;
struct cpia2_fh {scalar_t__ mmapped; int /*<<< orphan*/  prio; } ;
struct camera_data {scalar_t__ open_count; int /*<<< orphan*/  busy_lock; int /*<<< orphan*/  prio; scalar_t__ COM_len; scalar_t__ APP_len; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_PRIORITY_UNSET ; 
 scalar_t__ FUNC1 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*) ; 
 scalar_t__ FUNC3 (struct camera_data*) ; 
 struct cpia2_fh* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct camera_data* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct camera_data *cam = FUNC8(file);
	int retval = 0;

	if (!cam) {
		FUNC0("Internal error, camera_data not found!\n");
		return -ENODEV;
	}

	if(FUNC5(&cam->busy_lock))
		return -ERESTARTSYS;

	if(!cam->present) {
		retval = -ENODEV;
		goto err_return;
	}

	if (cam->open_count > 0) {
		goto skip_init;
	}

	if (FUNC1(cam)) {
		retval = -ENOMEM;
		goto err_return;
	}

	/* reset the camera */
	if (FUNC3(cam) < 0) {
		retval = -EIO;
		goto err_return;
	}

	cam->APP_len = 0;
	cam->COM_len = 0;

skip_init:
	{
		struct cpia2_fh *fh = FUNC4(sizeof(*fh),GFP_KERNEL);
		if(!fh) {
			retval = -ENOMEM;
			goto err_return;
		}
		file->private_data = fh;
		fh->prio = V4L2_PRIORITY_UNSET;
		FUNC7(&cam->prio, &fh->prio);
		fh->mmapped = 0;
	}

	++cam->open_count;

	FUNC2(cam);

err_return:
	FUNC6(&cam->busy_lock);
	return retval;
}