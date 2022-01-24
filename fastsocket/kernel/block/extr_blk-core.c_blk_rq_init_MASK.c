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
struct request_queue {int dummy; } ;
struct request {int cpu; int tag; int ref_count; int /*<<< orphan*/  start_time; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  __cmd; int /*<<< orphan*/  cmd; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  hash; scalar_t__ __sector; struct request_queue* q; int /*<<< orphan*/  timeout_list; int /*<<< orphan*/  queuelist; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MAX_CDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 

void FUNC5(struct request_queue *q, struct request *rq)
{
	FUNC3(rq, 0, sizeof(*rq));

	FUNC1(&rq->queuelist);
	FUNC1(&rq->timeout_list);
	rq->cpu = -1;
	rq->q = q;
	rq->__sector = (sector_t) -1;
	FUNC0(&rq->hash);
	FUNC2(&rq->rb_node);
	rq->cmd = rq->__cmd;
	rq->cmd_len = BLK_MAX_CDB;
	rq->tag = -1;
	rq->ref_count = 1;
	rq->start_time = jiffies;
	FUNC4(rq);
}