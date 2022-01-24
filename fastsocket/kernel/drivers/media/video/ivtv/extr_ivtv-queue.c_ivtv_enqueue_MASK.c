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
struct ivtv_queue {int /*<<< orphan*/  bytesused; int /*<<< orphan*/  length; int /*<<< orphan*/  buffers; int /*<<< orphan*/  list; } ;
struct ivtv_stream {int /*<<< orphan*/  qlock; scalar_t__ buf_size; struct ivtv_queue q_free; } ;
struct ivtv_buffer {scalar_t__ readpos; scalar_t__ bytesused; int /*<<< orphan*/  list; scalar_t__ dma_xfer_cnt; scalar_t__ b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct ivtv_stream *s, struct ivtv_buffer *buf, struct ivtv_queue *q)
{
	unsigned long flags;

	/* clear the buffer if it is going to be enqueued to the free queue */
	if (q == &s->q_free) {
		buf->bytesused = 0;
		buf->readpos = 0;
		buf->b_flags = 0;
		buf->dma_xfer_cnt = 0;
	}
	FUNC1(&s->qlock, flags);
	FUNC0(&buf->list, &q->list);
	q->buffers++;
	q->length += s->buf_size;
	q->bytesused += buf->bytesused - buf->readpos;
	FUNC2(&s->qlock, flags);
}