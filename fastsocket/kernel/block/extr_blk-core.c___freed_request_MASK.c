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
struct request_list {scalar_t__* count; int /*<<< orphan*/ * wait; } ;
struct request_queue {scalar_t__ nr_requests; struct request_list rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int) ; 
 scalar_t__ FUNC2 (struct request_queue*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct request_queue *q, int sync)
{
	struct request_list *rl = &q->rq;

	if (rl->count[sync] < FUNC2(q))
		FUNC0(q, sync);

	if (rl->count[sync] + 1 <= q->nr_requests) {
		if (FUNC3(&rl->wait[sync]))
			FUNC4(&rl->wait[sync]);

		FUNC1(q, sync);
	}
}