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
struct vino_channel_settings {int /*<<< orphan*/  fb_queue; scalar_t__ reading; } ;
struct v4l2_buffer {scalar_t__ index; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct vino_channel_settings* FUNC1 (struct file*) ; 
 struct vino_framebuffer* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vino_channel_settings*,struct vino_framebuffer*,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *__fh,
			      struct v4l2_buffer *b)
{
	struct vino_channel_settings *vcs = FUNC1(file);
	struct vino_framebuffer *fb;

	if (vcs->reading)
		return -EBUSY;

	/* TODO: check queue type */
	if (b->index >= FUNC3(&vcs->fb_queue)) {
		FUNC0("invalid index = %d\n",
		       b->index);
		return -EINVAL;
	}

	fb = FUNC2(&vcs->fb_queue,
				   b->index);
	if (fb == NULL) {
		FUNC0("vino_queue_get_buffer() failed");
		return -EINVAL;
	}

	FUNC4(vcs, fb, b);

	return 0;
}