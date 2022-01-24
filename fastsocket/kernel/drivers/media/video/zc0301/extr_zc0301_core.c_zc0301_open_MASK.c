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
struct zc0301_device {int state; int /*<<< orphan*/  kref; int /*<<< orphan*/  open_mutex; TYPE_1__* v4ldev; scalar_t__ frame_count; scalar_t__ nbuffers; int /*<<< orphan*/  stream; int /*<<< orphan*/  io; scalar_t__ users; int /*<<< orphan*/  wait_open; int /*<<< orphan*/  probe; } ;
struct file {int f_flags; struct zc0301_device* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int DEV_DISCONNECTED ; 
 int DEV_MISCONFIGURED ; 
 int EAGAIN ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  IO_NONE ; 
 int O_NDELAY ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  STREAM_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct zc0301_device* FUNC8 (struct file*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zc0301_dev_lock ; 
 int /*<<< orphan*/  FUNC11 (struct zc0301_device*) ; 
 int FUNC12 (struct zc0301_device*) ; 
 int /*<<< orphan*/  zc0301_release_resources ; 
 int FUNC13 (struct zc0301_device*) ; 

__attribute__((used)) static int FUNC14(struct file *filp)
{
	struct zc0301_device* cam;
	int err = 0;

	if (!FUNC2(&zc0301_dev_lock))
		return -EAGAIN;

	cam = FUNC8(filp);

	if (FUNC10(&cam->probe)) {
		FUNC7(&zc0301_dev_lock);
		return -ERESTARTSYS;
	}

	FUNC3(&cam->kref);

	if (FUNC5(&cam->open_mutex)) {
		FUNC4(&cam->kref, zc0301_release_resources);
		FUNC7(&zc0301_dev_lock);
		return -ERESTARTSYS;
	}

	if (cam->state & DEV_DISCONNECTED) {
		FUNC0(1, "Device not present");
		err = -ENODEV;
		goto out;
	}

	if (cam->users) {
		FUNC0(2, "Device /dev/video%d is busy...", cam->v4ldev->num);
		FUNC0(3, "Simultaneous opens are not supported");
		if ((filp->f_flags & O_NONBLOCK) ||
		    (filp->f_flags & O_NDELAY)) {
			err = -EWOULDBLOCK;
			goto out;
		}
		FUNC0(2, "A blocking open() has been requested. Wait for the "
		       "device to be released...");
		FUNC7(&zc0301_dev_lock);
		err = FUNC9(cam->wait_open,
						(cam->state & DEV_DISCONNECTED)
							 || !cam->users);
		FUNC1(&zc0301_dev_lock);
		if (err)
			goto out;
		if (cam->state & DEV_DISCONNECTED) {
			err = -ENODEV;
			goto out;
		}
	}

	if (cam->state & DEV_MISCONFIGURED) {
		err = FUNC12(cam);
		if (err) {
			FUNC0(1, "Initialization failed again. "
			       "I will retry on next open().");
			goto out;
		}
		cam->state &= ~DEV_MISCONFIGURED;
	}

	if ((err = FUNC13(cam)))
		goto out;

	filp->private_data = cam;
	cam->users++;
	cam->io = IO_NONE;
	cam->stream = STREAM_OFF;
	cam->nbuffers = 0;
	cam->frame_count = 0;
	FUNC11(cam);

	FUNC0(3, "Video device /dev/video%d is open", cam->v4ldev->num);

out:
	FUNC6(&cam->open_mutex);
	if (err)
		FUNC4(&cam->kref, zc0301_release_resources);
	FUNC7(&zc0301_dev_lock);
	return err;
}