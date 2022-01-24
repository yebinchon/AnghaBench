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
struct vino_framebuffer_queue {scalar_t__ magic; scalar_t__ length; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int VINO_QUEUE_ERROR ; 
 scalar_t__ VINO_QUEUE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct vino_framebuffer_queue *q,
				   unsigned int *used)
{
	int ret = 0;
	unsigned long flags;

	if (q->magic != VINO_QUEUE_MAGIC) {
		return VINO_QUEUE_ERROR;
	}

	FUNC0(&q->queue_lock, flags);

	if (q->length == 0) {
		ret = VINO_QUEUE_ERROR;
		goto out;
	}

	*used = FUNC2(&q->in);

out:
	FUNC1(&q->queue_lock, flags);

	return ret;
}