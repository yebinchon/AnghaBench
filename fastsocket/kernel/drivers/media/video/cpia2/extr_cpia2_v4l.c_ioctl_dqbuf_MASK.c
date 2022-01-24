#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ offset; } ;
struct v4l2_buffer {scalar_t__ type; scalar_t__ memory; int index; int flags; int /*<<< orphan*/  bytesused; int /*<<< orphan*/  sequence; int /*<<< orphan*/  timecode; scalar_t__ reserved; scalar_t__ input; int /*<<< orphan*/  length; TYPE_1__ m; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  field; } ;
struct framebuf {scalar_t__ status; int num; } ;
struct file {int f_flags; } ;
struct camera_data {TYPE_2__* buffers; int /*<<< orphan*/  frame_size; scalar_t__ frame_buffer; int /*<<< orphan*/  present; int /*<<< orphan*/  busy_lock; struct framebuf* curbuff; int /*<<< orphan*/  wq_stream; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; scalar_t__ data; int /*<<< orphan*/  seq; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOTTY ; 
 int ERESTARTSYS ; 
 scalar_t__ FRAME_READY ; 
 int O_NONBLOCK ; 
 int V4L2_BUF_FLAG_DONE ; 
 int V4L2_BUF_FLAG_MAPPED ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void *arg,struct camera_data *cam, struct file *file)
{
	struct v4l2_buffer *buf = arg;
	int frame;

	if(buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
	   buf->memory != V4L2_MEMORY_MMAP)
		return -EINVAL;

	frame = FUNC1(cam);

	if(frame < 0 && file->f_flags&O_NONBLOCK)
		return -EAGAIN;

	if(frame < 0) {
		/* Wait for a frame to become available */
		struct framebuf *cb=cam->curbuff;
		FUNC4(&cam->busy_lock);
		FUNC6(cam->wq_stream,
					 !cam->present ||
					 (cb=cam->curbuff)->status == FRAME_READY);
		FUNC3(&cam->busy_lock);
		if (FUNC5(current))
			return -ERESTARTSYS;
		if(!cam->present)
			return -ENOTTY;
		frame = cb->num;
	}


	buf->index = frame;
	buf->bytesused = cam->buffers[buf->index].length;
	buf->flags = V4L2_BUF_FLAG_MAPPED | V4L2_BUF_FLAG_DONE;
	buf->field = V4L2_FIELD_NONE;
	buf->timestamp = cam->buffers[buf->index].timestamp;
	buf->sequence = cam->buffers[buf->index].seq;
	buf->m.offset = cam->buffers[buf->index].data - cam->frame_buffer;
	buf->length = cam->frame_size;
	buf->input = 0;
	buf->reserved = 0;
	FUNC2(&buf->timecode, 0, sizeof(buf->timecode));

	FUNC0("DQBUF #%d status:%d seq:%d length:%d\n", buf->index,
	    cam->buffers[buf->index].status, buf->sequence, buf->bytesused);

	return 0;
}