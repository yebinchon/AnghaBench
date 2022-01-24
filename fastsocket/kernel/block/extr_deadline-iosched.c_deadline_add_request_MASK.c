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
struct request_queue {TYPE_1__* elevator; } ;
struct request {int /*<<< orphan*/  queuelist; } ;
struct deadline_data {int /*<<< orphan*/ * fifo_list; scalar_t__* fifo_expire; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct deadline_data*,struct request*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct request_queue *q, struct request *rq)
{
	struct deadline_data *dd = q->elevator->elevator_data;
	const int data_dir = FUNC2(rq);

	FUNC0(dd, rq);

	/*
	 * set expire time and add to fifo list
	 */
	FUNC3(rq, jiffies + dd->fifo_expire[data_dir]);
	FUNC1(&rq->queuelist, &dd->fifo_list[data_dir]);
}