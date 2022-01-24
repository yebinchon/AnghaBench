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
struct vino_framebuffer {scalar_t__ state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  frame_counter; } ;
struct TYPE_4__ {int /*<<< orphan*/  frame_wait_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  frame_counter; } ;
struct vino_channel_settings {TYPE_2__ fb_queue; TYPE_1__ int_data; int /*<<< orphan*/  capture_lock; } ;
struct timeval {int dummy; } ;

/* Variables and functions */
 scalar_t__ VINO_FRAMEBUFFER_IN_USE ; 
 scalar_t__ VINO_FRAMEBUFFER_READY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vino_channel_settings*,int /*<<< orphan*/ ) ; 
 struct vino_framebuffer* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct vino_channel_settings *vcs)
{
	struct vino_framebuffer *fb;
	unsigned long flags;

	FUNC2(&vcs->capture_lock, flags);
	fb = FUNC5(&vcs->fb_queue);
	if (!fb) {
		FUNC3(&vcs->capture_lock, flags);
		FUNC0("vino_frame_done(): vino_queue_transfer() failed!\n");
		return;
	}
	FUNC3(&vcs->capture_lock, flags);

	fb->frame_counter = vcs->int_data.frame_counter;
	FUNC1(&fb->timestamp, &vcs->int_data.timestamp,
	       sizeof(struct timeval));

	FUNC2(&fb->state_lock, flags);
	if (fb->state == VINO_FRAMEBUFFER_IN_USE)
		fb->state = VINO_FRAMEBUFFER_READY;
	FUNC3(&fb->state_lock, flags);

	FUNC6(&vcs->fb_queue.frame_wait_queue);

	FUNC4(vcs, 0);
}