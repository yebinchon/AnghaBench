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
struct vino_framebuffer {int dummy; } ;
struct vino_channel_settings {int /*<<< orphan*/  capture_lock; int /*<<< orphan*/  fb_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vino_framebuffer* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static
struct vino_framebuffer *FUNC4(struct
					      vino_channel_settings *vcs,
					      unsigned int index)
{
	struct vino_framebuffer *fb;
	unsigned long flags;

	FUNC0("vino_capture_enqueue():\n");

	FUNC1(&vcs->capture_lock, flags);

	fb = FUNC3(&vcs->fb_queue, index);
	if (fb == NULL) {
		FUNC0("vino_capture_enqueue(): vino_queue_add() failed, "
			"queue full?\n");
		goto out;
	}
out:
	FUNC2(&vcs->capture_lock, flags);

	return fb;
}