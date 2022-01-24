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
struct TYPE_2__ {int /*<<< orphan*/  frame_wait_queue; } ;
struct vino_channel_settings {TYPE_1__ fb_queue; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vino_channel_settings* FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, poll_table *pt)
{
	struct vino_channel_settings *vcs = FUNC2(file);
	unsigned int outgoing;
	unsigned int ret = 0;

	// lock mutex (?)
	// TODO: this has to be corrected for different read modes

	FUNC0("poll():\n");

	if (FUNC3(&vcs->fb_queue, &outgoing)) {
		FUNC0("poll(): vino_queue_get_outgoing() failed\n");
		ret = POLLERR;
		goto error;
	}
	if (outgoing > 0)
		goto over;

	FUNC1(file, &vcs->fb_queue.frame_wait_queue, pt);

	if (FUNC3(&vcs->fb_queue, &outgoing)) {
		FUNC0("poll(): vino_queue_get_outgoing() failed\n");
		ret = POLLERR;
		goto error;
	}

over:
	FUNC0("poll(): data %savailable\n",
		(outgoing > 0) ? "" : "not ");

	if (outgoing > 0)
		ret = POLLIN | POLLRDNORM;

error:
	return ret;
}