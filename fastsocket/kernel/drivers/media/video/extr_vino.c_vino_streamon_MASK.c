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
struct vino_channel_settings {int streaming; int /*<<< orphan*/  fb_queue; scalar_t__ reading; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct vino_channel_settings* FUNC1 (struct file*) ; 
 int FUNC2 (struct vino_channel_settings*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *__fh,
		enum v4l2_buf_type i)
{
	struct vino_channel_settings *vcs = FUNC1(file);
	unsigned int incoming;
	int ret;
	if (vcs->reading)
		return -EBUSY;

	if (vcs->streaming)
		return 0;

	// TODO: check queue type

	if (FUNC4(&vcs->fb_queue) < 1) {
		FUNC0("no buffers allocated\n");
		return -EINVAL;
	}

	ret = FUNC3(&vcs->fb_queue, &incoming);
	if (ret) {
		FUNC0("vino_queue_get_incoming() failed\n");
		return -EINVAL;
	}

	vcs->streaming = 1;

	if (incoming > 0) {
		ret = FUNC2(vcs, 1);
		if (ret) {
			vcs->streaming = 0;

			FUNC0("couldn't start capture\n");
			return -EINVAL;
		}
	}

	return 0;
}