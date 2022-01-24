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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct io_context {int dummy; } ;
struct cfq_io_context {struct cfq_data* key; } ;
struct cfq_data {struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfq_data*,struct cfq_io_context*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct io_context *ioc,
				       struct cfq_io_context *cic)
{
	struct cfq_data *cfqd = cic->key;

	if (cfqd) {
		struct request_queue *q = cfqd->queue;
		unsigned long flags;

		FUNC2(q->queue_lock, flags);

		/*
		 * Ensure we get a fresh copy of the ->key to prevent
		 * race between exiting task and queue
		 */
		FUNC1();
		if (cic->key)
			FUNC0(cfqd, cic);

		FUNC3(q->queue_lock, flags);
	}
}