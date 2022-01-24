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
struct request_queue {struct elevator_queue* elevator; } ;
struct request {int /*<<< orphan*/  hash; } ;
struct elevator_queue {int /*<<< orphan*/ * hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 

__attribute__((used)) static void FUNC5(struct request_queue *q, struct request *rq)
{
	struct elevator_queue *e = q->elevator;

	FUNC0(FUNC2(rq));
	FUNC3(&rq->hash, &e->hash[FUNC1(FUNC4(rq))]);
}