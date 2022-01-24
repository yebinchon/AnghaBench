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
struct file {int f_flags; struct et61x251_device* private_data; } ;
struct et61x251_device {int state; int /*<<< orphan*/  kref; int /*<<< orphan*/  open_mutex; TYPE_1__* v4ldev; scalar_t__ frame_count; scalar_t__ nbuffers; int /*<<< orphan*/  stream; int /*<<< orphan*/  io; scalar_t__ users; int /*<<< orphan*/  wait_open; int /*<<< orphan*/  probe; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int DEV_DISCONNECTED ; 
 int DEV_MISCONFIGURED ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  IO_NONE ; 
 int O_NDELAY ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  STREAM_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  et61x251_dev_lock ; 
 int /*<<< orphan*/  FUNC3 (struct et61x251_device*) ; 
 int FUNC4 (struct et61x251_device*) ; 
 int /*<<< orphan*/  et61x251_release_resources ; 
 int FUNC5 (struct et61x251_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct et61x251_device* FUNC11 (struct file*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct file *filp)
{
	struct et61x251_device* cam;
	int err = 0;

	if (!FUNC2(&et61x251_dev_lock))
		return -ERESTARTSYS;

	cam = FUNC11(filp);

	if (FUNC13(&cam->probe)) {
		FUNC10(&et61x251_dev_lock);
		return -ERESTARTSYS;
	}

	FUNC6(&cam->kref);

	if (FUNC8(&cam->open_mutex)) {
		FUNC7(&cam->kref, et61x251_release_resources);
		FUNC10(&et61x251_dev_lock);
		return -ERESTARTSYS;
	}

	if (cam->state & DEV_DISCONNECTED) {
		FUNC0(1, "Device not present");
		err = -ENODEV;
		goto out;
	}

	if (cam->users) {
		FUNC0(2, "Device /dev/video%d is already in use",
		       cam->v4ldev->num);
		FUNC0(3, "Simultaneous opens are not supported");
		if ((filp->f_flags & O_NONBLOCK) ||
		    (filp->f_flags & O_NDELAY)) {
			err = -EWOULDBLOCK;
			goto out;
		}
		FUNC0(2, "A blocking open() has been requested. Wait for the "
		       "device to be released...");
		FUNC10(&et61x251_dev_lock);
		err = FUNC12(cam->wait_open,
						(cam->state & DEV_DISCONNECTED)
							 || !cam->users);
		FUNC1(&et61x251_dev_lock);
		if (err)
			goto out;
		if (cam->state & DEV_DISCONNECTED) {
			err = -ENODEV;
			goto out;
		}
	}

	if (cam->state & DEV_MISCONFIGURED) {
		err = FUNC4(cam);
		if (err) {
			FUNC0(1, "Initialization failed again. "
			       "I will retry on next open().");
			goto out;
		}
		cam->state &= ~DEV_MISCONFIGURED;
	}

	if ((err = FUNC5(cam)))
		goto out;

	filp->private_data = cam;
	cam->users++;
	cam->io = IO_NONE;
	cam->stream = STREAM_OFF;
	cam->nbuffers = 0;
	cam->frame_count = 0;
	FUNC3(cam);

	FUNC0(3, "Video device /dev/video%d is open", cam->v4ldev->num);

out:
	FUNC9(&cam->open_mutex);
	if (err)
		FUNC7(&cam->kref, et61x251_release_resources);
	FUNC10(&et61x251_dev_lock);
	return err;
}