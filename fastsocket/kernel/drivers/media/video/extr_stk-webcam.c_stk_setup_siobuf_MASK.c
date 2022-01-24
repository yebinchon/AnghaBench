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
struct TYPE_3__ {int offset; } ;
struct TYPE_4__ {int length; int index; TYPE_1__ m; int /*<<< orphan*/  memory; int /*<<< orphan*/  field; int /*<<< orphan*/  type; } ;
struct stk_sio_buffer {TYPE_2__ v4lbuf; struct stk_camera* dev; scalar_t__ mapcount; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  list; } ;
struct stk_camera {int /*<<< orphan*/  frame_size; struct stk_sio_buffer* sio_bufs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct stk_camera *dev, int index)
{
	struct stk_sio_buffer *buf = dev->sio_bufs + index;
	FUNC0(&buf->list);
	buf->v4lbuf.length = FUNC1(dev->frame_size);
	buf->buffer = FUNC2(buf->v4lbuf.length);
	if (buf->buffer == NULL)
		return -ENOMEM;
	buf->mapcount = 0;
	buf->dev = dev;
	buf->v4lbuf.index = index;
	buf->v4lbuf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	buf->v4lbuf.field = V4L2_FIELD_NONE;
	buf->v4lbuf.memory = V4L2_MEMORY_MMAP;
	buf->v4lbuf.m.offset = 2*index*buf->v4lbuf.length;
	return 0;
}