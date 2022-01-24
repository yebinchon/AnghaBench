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
struct srp_queue {struct iu_entry* pool; struct iu_entry* items; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; } ;
struct srp_buf {int dummy; } ;
struct iu_entry {struct srp_buf* sbuf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC2 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iu_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct srp_queue *q, size_t max,
			     struct srp_buf **ring)
{
	int i;
	struct iu_entry *iue;

	q->pool = FUNC2(max, sizeof(struct iu_entry *), GFP_KERNEL);
	if (!q->pool)
		return -ENOMEM;
	q->items = FUNC2(max, sizeof(struct iu_entry), GFP_KERNEL);
	if (!q->items)
		goto free_pool;

	FUNC5(&q->lock);
	q->queue = FUNC3((void *) q->pool, max * sizeof(void *),
			      GFP_KERNEL, &q->lock);
	if (FUNC0(q->queue))
		goto free_item;

	for (i = 0, iue = q->items; i < max; i++) {
		FUNC1(q->queue, (void *) &iue, sizeof(void *));
		iue->sbuf = ring[i];
		iue++;
	}
	return 0;

free_item:
	FUNC4(q->items);
free_pool:
	FUNC4(q->pool);
	return -ENOMEM;
}