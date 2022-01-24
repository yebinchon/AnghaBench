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
struct v4l2_buffer {size_t index; } ;
struct uvc_video_queue {size_t count; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct uvc_video_queue *queue,
		struct v4l2_buffer *v4l2_buf)
{
	int ret = 0;

	FUNC1(&queue->mutex);
	if (v4l2_buf->index >= queue->count) {
		ret = -EINVAL;
		goto done;
	}

	FUNC0(&queue->buffer[v4l2_buf->index], v4l2_buf);

done:
	FUNC2(&queue->mutex);
	return ret;
}