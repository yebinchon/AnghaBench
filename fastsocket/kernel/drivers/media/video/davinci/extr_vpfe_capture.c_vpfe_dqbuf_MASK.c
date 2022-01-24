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
struct vpfe_device {int /*<<< orphan*/  buffer_queue; int /*<<< orphan*/  v4l2_dev; } ;
struct v4l2_buffer {scalar_t__ type; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int O_NONBLOCK ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct vpfe_device* FUNC2 (struct file*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct v4l2_buffer*,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
		      struct v4l2_buffer *buf)
{
	struct vpfe_device *vpfe_dev = FUNC2(file);

	FUNC0(1, debug, &vpfe_dev->v4l2_dev, "vpfe_dqbuf\n");

	if (V4L2_BUF_TYPE_VIDEO_CAPTURE != buf->type) {
		FUNC1(&vpfe_dev->v4l2_dev, "Invalid buf type\n");
		return -EINVAL;
	}
	return FUNC3(&vpfe_dev->buffer_queue,
				      buf, file->f_flags & O_NONBLOCK);
}