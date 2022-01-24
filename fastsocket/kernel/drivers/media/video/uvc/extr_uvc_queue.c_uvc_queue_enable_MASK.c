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
struct uvc_video_queue {unsigned int count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; TYPE_1__* buffer; int /*<<< orphan*/  mainqueue; scalar_t__ buf_used; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; scalar_t__ error; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UVC_BUF_STATE_IDLE ; 
 int /*<<< orphan*/  UVC_QUEUE_STREAMING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_video_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct uvc_video_queue*) ; 

int FUNC5(struct uvc_video_queue *queue, int enable)
{
	unsigned int i;
	int ret = 0;

	FUNC1(&queue->mutex);
	if (enable) {
		if (FUNC4(queue)) {
			ret = -EBUSY;
			goto done;
		}
		queue->flags |= UVC_QUEUE_STREAMING;
		queue->buf_used = 0;
	} else {
		FUNC3(queue, 0);
		FUNC0(&queue->mainqueue);

		for (i = 0; i < queue->count; ++i) {
			queue->buffer[i].error = 0;
			queue->buffer[i].state = UVC_BUF_STATE_IDLE;
		}

		queue->flags &= ~UVC_QUEUE_STREAMING;
	}

done:
	FUNC2(&queue->mutex);
	return ret;
}