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
struct vino_channel_settings {int capturing; int /*<<< orphan*/  capture_lock; int /*<<< orphan*/  fb_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct vino_channel_settings*,struct vino_framebuffer*) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 
 struct vino_framebuffer* FUNC5 (int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct vino_channel_settings *vcs, int start)
{
	struct vino_framebuffer *fb;
	unsigned int incoming, id;
	int err = 0;
	unsigned long flags;

	FUNC0("vino_capture_next():\n");

	FUNC1(&vcs->capture_lock, flags);

	if (start) {
		/* start capture only if capture isn't in progress already */
		if (vcs->capturing) {
			FUNC2(&vcs->capture_lock, flags);
			return 0;
		}

	} else {
		/* capture next frame:
		 * stop capture if capturing is not set */
		if (!vcs->capturing) {
			FUNC2(&vcs->capture_lock, flags);
			return 0;
		}
	}

	err = FUNC4(&vcs->fb_queue, &incoming);
	if (err) {
		FUNC0("vino_capture_next(): vino_queue_get_incoming() "
			"failed\n");
		err = -EINVAL;
		goto out;
	}
	if (incoming == 0) {
		FUNC0("vino_capture_next(): no buffers available\n");
		goto out;
	}

	fb = FUNC5(&vcs->fb_queue, &id);
	if (fb == NULL) {
		FUNC0("vino_capture_next(): vino_queue_peek() failed\n");
		err = -EINVAL;
		goto out;
	}

	if (start) {
		vcs->capturing = 1;
	}

	FUNC2(&vcs->capture_lock, flags);

	err = FUNC3(vcs, fb);

	return err;

out:
	vcs->capturing = 0;
	FUNC2(&vcs->capture_lock, flags);

	return err;
}