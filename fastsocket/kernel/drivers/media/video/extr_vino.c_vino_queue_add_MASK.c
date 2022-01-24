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
struct vino_framebuffer_queue {scalar_t__ magic; unsigned int length; int /*<<< orphan*/  queue_lock; struct vino_framebuffer** buffer; int /*<<< orphan*/  in; int /*<<< orphan*/  out; } ;
struct vino_framebuffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ VINO_QUEUE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vino_framebuffer *FUNC5(struct
					       vino_framebuffer_queue *q,
					       unsigned int id)
{
	struct vino_framebuffer *ret = NULL;
	unsigned int total;
	unsigned long flags;

	FUNC0("vino_queue_add(): id = %d\n", id);

	if (q->magic != VINO_QUEUE_MAGIC) {
		return ret;
	}

	FUNC1(&q->queue_lock, flags);

	if (q->length == 0)
		goto out;

	if (id >= q->length)
		goto out;

	/* not needed?: if (vino_fifo_full(&q->out)) {
		goto out;
		}*/
	/* check that outgoing queue isn't already full
	 * (or that it won't become full) */
	total = FUNC4(&q->in) +
		FUNC4(&q->out);
	if (total >= q->length)
		goto out;

	if (FUNC3(&q->in, id))
		goto out;

	ret = q->buffer[id];

out:
	FUNC2(&q->queue_lock, flags);

	return ret;
}