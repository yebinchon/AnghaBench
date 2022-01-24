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
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {scalar_t__ status; int /*<<< orphan*/  wait_data; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  video_dev; } ;
struct hdpvr_buffer {scalar_t__ status; } ;
struct file {struct hdpvr_fh* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 scalar_t__ BUFSTAT_READY ; 
 unsigned int EIO ; 
 int /*<<< orphan*/  MSG_BUFFER ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 scalar_t__ STATUS_IDLE ; 
 int /*<<< orphan*/  hdpvr_debug ; 
 struct hdpvr_buffer* FUNC0 (struct hdpvr_device*) ; 
 scalar_t__ FUNC1 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC8(struct file *filp, poll_table *wait)
{
	struct hdpvr_buffer *buf = NULL;
	struct hdpvr_fh *fh = filp->private_data;
	struct hdpvr_device *dev = fh->dev;
	unsigned int mask = 0;

	FUNC2(&dev->io_mutex);

	if (!FUNC7(dev->video_dev)) {
		FUNC3(&dev->io_mutex);
		return -EIO;
	}

	if (dev->status == STATUS_IDLE) {
		if (FUNC1(dev)) {
			FUNC6(MSG_BUFFER, hdpvr_debug, &dev->v4l2_dev,
				 "start_streaming failed\n");
			dev->status = STATUS_IDLE;
		}

		FUNC5();
	}
	FUNC3(&dev->io_mutex);

	buf = FUNC0(dev);
	/* only wait if no data is available */
	if (!buf || buf->status != BUFSTAT_READY) {
		FUNC4(filp, &dev->wait_data, wait);
		buf = FUNC0(dev);
	}
	if (buf && buf->status == BUFSTAT_READY)
		mask |= POLLIN | POLLRDNORM;

	return mask;
}