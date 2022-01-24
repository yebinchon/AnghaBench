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
struct vino_framebuffer_queue {scalar_t__ magic; scalar_t__ length; int /*<<< orphan*/  queue_lock; struct vino_framebuffer** buffer; int /*<<< orphan*/  out; } ;
struct vino_framebuffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ VINO_QUEUE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static struct vino_framebuffer *FUNC4(struct
						  vino_framebuffer_queue *q,
						  unsigned int *id)
{
	struct vino_framebuffer *ret = NULL;
	unsigned long flags;
	FUNC0("vino_queue_remove():\n");

	if (q->magic != VINO_QUEUE_MAGIC) {
		return ret;
	}

	FUNC1(&q->queue_lock, flags);

	if (q->length == 0)
		goto out;

	if (FUNC3(&q->out, id)) {
		goto out;
	}

	FUNC0("vino_queue_remove(): id = %d\n", *id);
	ret = q->buffer[*id];
out:
	FUNC2(&q->queue_lock, flags);

	return ret;
}