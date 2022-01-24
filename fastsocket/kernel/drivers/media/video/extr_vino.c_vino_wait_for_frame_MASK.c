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
typedef  int /*<<< orphan*/  wait_queue_t ;
struct TYPE_2__ {int /*<<< orphan*/  frame_wait_queue; } ;
struct vino_channel_settings {TYPE_1__ fb_queue; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct vino_channel_settings *vcs)
{
	wait_queue_t wait;
	int err = 0;

	FUNC1("vino_wait_for_frame():\n");

	FUNC2(&wait, current);
	/* add ourselves into wait queue */
	FUNC0(&vcs->fb_queue.frame_wait_queue, &wait);

	/* to ensure that schedule_timeout will return immediately
	 * if VINO interrupt was triggered meanwhile */
	FUNC5(FUNC3(100));

	if (FUNC6(current))
		err = -EINTR;

	FUNC4(&vcs->fb_queue.frame_wait_queue, &wait);

	FUNC1("vino_wait_for_frame(): waiting for frame %s\n",
		err ? "failed" : "ok");

	return err;
}