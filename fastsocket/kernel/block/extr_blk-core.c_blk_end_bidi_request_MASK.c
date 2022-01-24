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
struct request {struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 scalar_t__ FUNC1 (struct request*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct request *rq, int error,
				 unsigned int nr_bytes, unsigned int bidi_bytes)
{
	struct request_queue *q = rq->q;
	unsigned long flags;

	if (FUNC1(rq, error, nr_bytes, bidi_bytes))
		return true;

	FUNC2(q->queue_lock, flags);
	FUNC0(rq, error);
	FUNC3(q->queue_lock, flags);

	return false;
}