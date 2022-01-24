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
struct videobuf_queue {int /*<<< orphan*/  stream; TYPE_2__** bufs; TYPE_1__* ops; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  wait; scalar_t__ reading; scalar_t__ streaming; } ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  done; int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* buf_release ) (struct videobuf_queue*,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ VIDEOBUF_ERROR ; 
 scalar_t__ VIDEOBUF_QUEUED ; 
 int VIDEO_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct videobuf_queue*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct videobuf_queue *q)
{
	unsigned long flags = 0;
	int i;

	q->streaming = 0;
	q->reading  = 0;
	FUNC6(&q->wait);

	/* remove queued buffers from list */
	FUNC2(q->irqlock, flags);
	for (i = 0; i < VIDEO_MAX_FRAME; i++) {
		if (NULL == q->bufs[i])
			continue;
		if (q->bufs[i]->state == VIDEOBUF_QUEUED) {
			FUNC1(&q->bufs[i]->queue);
			q->bufs[i]->state = VIDEOBUF_ERROR;
			FUNC5(&q->bufs[i]->done);
		}
	}
	FUNC3(q->irqlock, flags);

	/* free all buffers + clear queue */
	for (i = 0; i < VIDEO_MAX_FRAME; i++) {
		if (NULL == q->bufs[i])
			continue;
		q->ops->buf_release(q, q->bufs[i]);
	}
	FUNC0(&q->stream);
}