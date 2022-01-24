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
struct vino_framebuffer {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  state; } ;
struct vino_channel_settings {int /*<<< orphan*/  capture_lock; int /*<<< orphan*/  fb_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  VINO_FRAMEBUFFER_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct vino_channel_settings*,int /*<<< orphan*/ ) ; 
 struct vino_framebuffer* FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static void FUNC5(struct vino_channel_settings *vcs)
{
	struct vino_framebuffer *fb;
	unsigned long flags;
	unsigned int id;

	FUNC1(&vcs->capture_lock, flags);
	fb = FUNC4(&vcs->fb_queue, &id);
	if (!fb) {
		FUNC2(&vcs->capture_lock, flags);
		FUNC0("vino_skip_frame(): vino_queue_peek() failed!\n");
		return;
	}
	FUNC2(&vcs->capture_lock, flags);

	FUNC1(&fb->state_lock, flags);
	fb->state = VINO_FRAMEBUFFER_UNUSED;
	FUNC2(&fb->state_lock, flags);

	FUNC3(vcs, 0);
}