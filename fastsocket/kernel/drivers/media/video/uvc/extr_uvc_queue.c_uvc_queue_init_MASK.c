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
struct uvc_video_queue {int type; int /*<<< orphan*/  flags; int /*<<< orphan*/  irqqueue; int /*<<< orphan*/  mainqueue; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  mutex; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UVC_QUEUE_DROP_CORRUPTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct uvc_video_queue *queue, enum v4l2_buf_type type,
		    int drop_corrupted)
{
	FUNC1(&queue->mutex);
	FUNC2(&queue->irqlock);
	FUNC0(&queue->mainqueue);
	FUNC0(&queue->irqqueue);
	queue->flags = drop_corrupted ? UVC_QUEUE_DROP_CORRUPTED : 0;
	queue->type = type;
}