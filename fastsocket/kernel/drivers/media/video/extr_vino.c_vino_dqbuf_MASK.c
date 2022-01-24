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
struct v4l2_buffer {int /*<<< orphan*/  index; } ;
struct file {unsigned int f_flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 unsigned int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct vino_channel_settings* FUNC1 (struct file*) ; 
 int FUNC2 (struct vino_channel_settings*,struct vino_framebuffer*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 
 struct vino_framebuffer* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vino_channel_settings*,struct vino_framebuffer*,struct v4l2_buffer*) ; 
 int FUNC7 (struct vino_channel_settings*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *__fh,
			   struct v4l2_buffer *b)
{
	struct vino_channel_settings *vcs = FUNC1(file);
	unsigned int nonblocking = file->f_flags & O_NONBLOCK;
	struct vino_framebuffer *fb;
	unsigned int incoming, outgoing;
	int err;

	if (vcs->reading)
		return -EBUSY;

	/* TODO: check queue type */

	err = FUNC3(&vcs->fb_queue, &incoming);
	if (err) {
		FUNC0("vino_queue_get_incoming() failed\n");
		return -EINVAL;
	}
	err = FUNC4(&vcs->fb_queue, &outgoing);
	if (err) {
		FUNC0("vino_queue_get_outgoing() failed\n");
		return -EINVAL;
	}

	FUNC0("incoming = %d, outgoing = %d\n", incoming, outgoing);

	if (outgoing == 0) {
		if (incoming == 0) {
			FUNC0("no incoming or outgoing buffers\n");
			return -EINVAL;
		}
		if (nonblocking) {
			FUNC0("non-blocking I/O was selected and "
				"there are no buffers to dequeue\n");
			return -EAGAIN;
		}

		err = FUNC7(vcs);
		if (err) {
			err = FUNC7(vcs);
			if (err) {
				/* interrupted or no frames captured because of
				 * frame skipping */
				/* vino_capture_failed(vcs); */
				return -EIO;
			}
		}
	}

	fb = FUNC5(&vcs->fb_queue, &b->index);
	if (fb == NULL) {
		FUNC0("vino_queue_remove() failed\n");
		return -EINVAL;
	}

	err = FUNC2(vcs, fb);

	FUNC6(vcs, fb, b);

	if (err)
		return -EIO;

	return 0;
}