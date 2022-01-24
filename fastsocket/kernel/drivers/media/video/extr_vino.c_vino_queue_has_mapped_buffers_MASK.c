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
struct vino_framebuffer_queue {scalar_t__ magic; unsigned int length; int /*<<< orphan*/  queue_lock; TYPE_1__** buffer; } ;
struct TYPE_2__ {scalar_t__ map_count; } ;

/* Variables and functions */
 scalar_t__ VINO_QUEUE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct vino_framebuffer_queue *q)
{
	unsigned int i;
	int ret = 0;
	unsigned long flags;

	if (q->magic != VINO_QUEUE_MAGIC) {
		return ret;
	}

	FUNC0(&q->queue_lock, flags);
	for (i = 0; i < q->length; i++) {
		if (q->buffer[i]->map_count > 0) {
			ret = 1;
			break;
		}
	}
	FUNC1(&q->queue_lock, flags);

	return ret;
}