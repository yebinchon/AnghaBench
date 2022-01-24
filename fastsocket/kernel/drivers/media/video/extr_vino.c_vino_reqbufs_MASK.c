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
struct vino_channel_settings {int /*<<< orphan*/  fb_queue; scalar_t__ streaming; scalar_t__ reading; } ;
struct v4l2_requestbuffers {scalar_t__ memory; int /*<<< orphan*/  count; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct vino_channel_settings* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct vino_channel_settings*) ; 
 scalar_t__ FUNC3 (struct vino_channel_settings*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *__fh,
			     struct v4l2_requestbuffers *rb)
{
	struct vino_channel_settings *vcs = FUNC1(file);

	if (vcs->reading)
		return -EBUSY;

	/* TODO: check queue type */
	if (rb->memory != V4L2_MEMORY_MMAP) {
		FUNC0("type not mmap\n");
		return -EINVAL;
	}

	FUNC0("count = %d\n", rb->count);
	if (rb->count > 0) {
		if (FUNC3(vcs)) {
			FUNC0("busy, capturing\n");
			return -EBUSY;
		}

		if (FUNC5(&vcs->fb_queue)) {
			FUNC0("busy, buffers still mapped\n");
			return -EBUSY;
		} else {
			vcs->streaming = 0;
			FUNC4(&vcs->fb_queue);
			FUNC6(&vcs->fb_queue, &rb->count);
		}
	} else {
		vcs->streaming = 0;
		FUNC2(vcs);
		FUNC4(&vcs->fb_queue);
	}

	return 0;
}