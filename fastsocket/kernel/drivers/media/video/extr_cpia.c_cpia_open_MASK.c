#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;
struct cam_data {scalar_t__ open_count; int first_frame; TYPE_3__* ops; int /*<<< orphan*/  busy_lock; int /*<<< orphan*/ * raw_image; TYPE_2__ decompressed_frame; scalar_t__ mmap_kludge; TYPE_1__* proc_entry; int /*<<< orphan*/  lowlevel_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* close ) (int /*<<< orphan*/ ) ;scalar_t__ (* open ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  owner; } ;
struct TYPE_4__ {int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  CPIA_MAX_IMAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int EINTR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (struct cam_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC12 (struct file*) ; 
 struct cam_data* FUNC13 (struct video_device*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct video_device *dev = FUNC12(file);
	struct cam_data *cam = FUNC13(dev);
	int err;

	if (!cam) {
		FUNC0("Internal error, cam_data not found!\n");
		return -ENODEV;
	}

	if (cam->open_count > 0) {
		FUNC0("Camera already open\n");
		return -EBUSY;
	}

	if (!FUNC11(cam->ops->owner))
		return -ENODEV;

	FUNC2(&cam->busy_lock);
	err = -ENOMEM;
	if (!cam->raw_image) {
		cam->raw_image = FUNC7(CPIA_MAX_IMAGE_SIZE);
		if (!cam->raw_image)
			goto oops;
	}

	if (!cam->decompressed_frame.data) {
		cam->decompressed_frame.data = FUNC7(CPIA_MAX_FRAME_SIZE);
		if (!cam->decompressed_frame.data)
			goto oops;
	}

	/* open cpia */
	err = -ENODEV;
	if (cam->ops->open(cam->lowlevel_data))
		goto oops;

	/* reset the camera */
	if ((err = FUNC5(cam)) != 0) {
		cam->ops->close(cam->lowlevel_data);
		goto oops;
	}

	err = -EINTR;
	if(FUNC8(current))
		goto oops;

	/* Set ownership of /proc/cpia/videoX to current user */
	if(cam->proc_entry)
		cam->proc_entry->uid = FUNC1();

	/* set mark for loading first frame uncompressed */
	cam->first_frame = 1;

	/* init it to something */
	cam->mmap_kludge = 0;

	++cam->open_count;
	file->private_data = dev;
	FUNC3(&cam->busy_lock);
	return 0;

 oops:
	if (cam->decompressed_frame.data) {
		FUNC6(cam->decompressed_frame.data, CPIA_MAX_FRAME_SIZE);
		cam->decompressed_frame.data = NULL;
	}
	if (cam->raw_image) {
		FUNC6(cam->raw_image, CPIA_MAX_IMAGE_SIZE);
		cam->raw_image = NULL;
	}
	FUNC3(&cam->busy_lock);
	FUNC4(cam->ops);
	return err;
}