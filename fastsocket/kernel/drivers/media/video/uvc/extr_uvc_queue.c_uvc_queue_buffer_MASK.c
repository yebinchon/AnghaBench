#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_buffer {size_t index; scalar_t__ type; scalar_t__ memory; scalar_t__ bytesused; } ;
struct uvc_video_queue {scalar_t__ type; size_t count; int flags; int /*<<< orphan*/  mutex; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  irqqueue; int /*<<< orphan*/  mainqueue; struct uvc_buffer* buffer; } ;
struct TYPE_2__ {scalar_t__ length; scalar_t__ bytesused; } ;
struct uvc_buffer {scalar_t__ state; int /*<<< orphan*/  queue; int /*<<< orphan*/  stream; TYPE_1__ buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ UVC_BUF_STATE_IDLE ; 
 scalar_t__ UVC_BUF_STATE_QUEUED ; 
 int UVC_QUEUE_DISCONNECTED ; 
 int /*<<< orphan*/  UVC_TRACE_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC6(struct uvc_video_queue *queue,
	struct v4l2_buffer *v4l2_buf)
{
	struct uvc_buffer *buf;
	unsigned long flags;
	int ret = 0;

	FUNC5(UVC_TRACE_CAPTURE, "Queuing buffer %u.\n", v4l2_buf->index);

	if (v4l2_buf->type != queue->type ||
	    v4l2_buf->memory != V4L2_MEMORY_MMAP) {
		FUNC5(UVC_TRACE_CAPTURE, "[E] Invalid buffer type (%u) "
			"and/or memory (%u).\n", v4l2_buf->type,
			v4l2_buf->memory);
		return -EINVAL;
	}

	FUNC1(&queue->mutex);
	if (v4l2_buf->index >= queue->count) {
		FUNC5(UVC_TRACE_CAPTURE, "[E] Out of range index.\n");
		ret = -EINVAL;
		goto done;
	}

	buf = &queue->buffer[v4l2_buf->index];
	if (buf->state != UVC_BUF_STATE_IDLE) {
		FUNC5(UVC_TRACE_CAPTURE, "[E] Invalid buffer state "
			"(%u).\n", buf->state);
		ret = -EINVAL;
		goto done;
	}

	if (v4l2_buf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT &&
	    v4l2_buf->bytesused > buf->buf.length) {
		FUNC5(UVC_TRACE_CAPTURE, "[E] Bytes used out of bounds.\n");
		ret = -EINVAL;
		goto done;
	}

	FUNC3(&queue->irqlock, flags);
	if (queue->flags & UVC_QUEUE_DISCONNECTED) {
		FUNC4(&queue->irqlock, flags);
		ret = -ENODEV;
		goto done;
	}
	buf->state = UVC_BUF_STATE_QUEUED;
	if (v4l2_buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		buf->buf.bytesused = 0;
	else
		buf->buf.bytesused = v4l2_buf->bytesused;

	FUNC0(&buf->stream, &queue->mainqueue);
	FUNC0(&buf->queue, &queue->irqqueue);
	FUNC4(&queue->irqlock, flags);

done:
	FUNC2(&queue->mutex);
	return ret;
}