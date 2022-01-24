#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uvc_video_queue {unsigned int count; unsigned int buf_size; int /*<<< orphan*/  mutex; void* mem; TYPE_3__* buffer; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {unsigned int offset; } ;
struct TYPE_5__ {unsigned int index; unsigned int length; scalar_t__ flags; int /*<<< orphan*/  memory; int /*<<< orphan*/  field; int /*<<< orphan*/  type; TYPE_1__ m; } ;
struct TYPE_6__ {int /*<<< orphan*/  wait; TYPE_2__ buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int UVC_MAX_VIDEO_BUFFERS ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_MEMORY_MMAP ; 
 int FUNC1 (struct uvc_video_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (unsigned int) ; 

int FUNC7(struct uvc_video_queue *queue, unsigned int nbuffers,
		unsigned int buflength)
{
	unsigned int bufsize = FUNC0(buflength);
	unsigned int i;
	void *mem = NULL;
	int ret;

	if (nbuffers > UVC_MAX_VIDEO_BUFFERS)
		nbuffers = UVC_MAX_VIDEO_BUFFERS;

	FUNC4(&queue->mutex);

	if ((ret = FUNC1(queue)) < 0)
		goto done;

	/* Bail out if no buffers should be allocated. */
	if (nbuffers == 0)
		goto done;

	/* Decrement the number of buffers until allocation succeeds. */
	for (; nbuffers > 0; --nbuffers) {
		mem = FUNC6(nbuffers * bufsize);
		if (mem != NULL)
			break;
	}

	if (mem == NULL) {
		ret = -ENOMEM;
		goto done;
	}

	for (i = 0; i < nbuffers; ++i) {
		FUNC3(&queue->buffer[i], 0, sizeof queue->buffer[i]);
		queue->buffer[i].buf.index = i;
		queue->buffer[i].buf.m.offset = i * bufsize;
		queue->buffer[i].buf.length = buflength;
		queue->buffer[i].buf.type = queue->type;
		queue->buffer[i].buf.field = V4L2_FIELD_NONE;
		queue->buffer[i].buf.memory = V4L2_MEMORY_MMAP;
		queue->buffer[i].buf.flags = 0;
		FUNC2(&queue->buffer[i].wait);
	}

	queue->mem = mem;
	queue->count = nbuffers;
	queue->buf_size = bufsize;
	ret = nbuffers;

done:
	FUNC5(&queue->mutex);
	return ret;
}