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
struct request_queue {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue_flags; int /*<<< orphan*/  limits; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_CLUSTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct request_queue *t, struct request_queue *b)
{
	FUNC1(&t->limits, &b->limits, 0);

	if (!t->queue_lock)
		FUNC0(1);
	else if (!FUNC5(QUEUE_FLAG_CLUSTER, &b->queue_flags)) {
		unsigned long flags;
		FUNC3(t->queue_lock, flags);
		FUNC2(QUEUE_FLAG_CLUSTER, t);
		FUNC4(t->queue_lock, flags);
	}
}