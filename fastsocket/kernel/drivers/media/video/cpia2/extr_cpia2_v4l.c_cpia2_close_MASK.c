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
struct video_device {int dummy; } ;
struct file {struct cpia2_fh* private_data; } ;
struct cpia2_fh {int open_count; scalar_t__ prio; int /*<<< orphan*/  busy_lock; scalar_t__ present; scalar_t__ mmapped; } ;
struct camera_data {int open_count; scalar_t__ prio; int /*<<< orphan*/  busy_lock; scalar_t__ present; scalar_t__ mmapped; } ;

/* Variables and functions */
 scalar_t__ V4L2_PRIORITY_RECORD ; 
 int /*<<< orphan*/  FUNC0 (struct cpia2_fh*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpia2_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpia2_fh*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpia2_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpia2_fh*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*) ; 
 struct video_device* FUNC8 (struct file*) ; 
 struct cpia2_fh* FUNC9 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct video_device*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct video_device *dev = FUNC8(file);
	struct camera_data *cam = FUNC9(dev);
	struct cpia2_fh *fh = file->private_data;

	FUNC5(&cam->busy_lock);

	if (cam->present &&
	    (cam->open_count == 1
	     || fh->prio == V4L2_PRIORITY_RECORD
	    )) {
		FUNC3(cam);

		if(cam->open_count == 1) {
			/* save camera state for later open */
			FUNC1(cam);

			FUNC2(cam);
			FUNC0(cam);
		}
	}

	{
		if(fh->mmapped)
			cam->mmapped = 0;
		FUNC7(&cam->prio,&fh->prio);
		file->private_data = NULL;
		FUNC4(fh);
	}

	if (--cam->open_count == 0) {
		FUNC0(cam);
		if (!cam->present) {
			FUNC10(dev);
			FUNC6(&cam->busy_lock);
			FUNC4(cam);
			return 0;
		}
	}

	FUNC6(&cam->busy_lock);

	return 0;
}