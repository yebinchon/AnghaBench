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
struct vino_channel_settings {scalar_t__ streaming; scalar_t__ reading; } ;
struct v4l2_buffer {scalar_t__ memory; int /*<<< orphan*/  index; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct vino_channel_settings* FUNC1 (struct file*) ; 
 struct vino_framebuffer* FUNC2 (struct vino_channel_settings*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vino_channel_settings*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vino_channel_settings*,struct vino_framebuffer*,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *__fh,
			  struct v4l2_buffer *b)
{
	struct vino_channel_settings *vcs = FUNC1(file);
	struct vino_framebuffer *fb;
	int ret;

	if (vcs->reading)
		return -EBUSY;

	/* TODO: check queue type */
	if (b->memory != V4L2_MEMORY_MMAP) {
		FUNC0("type not mmap\n");
		return -EINVAL;
	}

	fb = FUNC2(vcs, b->index);
	if (fb == NULL)
		return -EINVAL;

	FUNC4(vcs, fb, b);

	if (vcs->streaming) {
		ret = FUNC3(vcs, 1);
		if (ret)
			return ret;
	}

	return 0;
}