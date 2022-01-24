#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {struct bsg_command* end_io_data; TYPE_1__* next_rq; int /*<<< orphan*/  bio; } ;
struct bsg_device {int /*<<< orphan*/  name; int /*<<< orphan*/  lock; int /*<<< orphan*/  busy_list; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  duration; } ;
struct bsg_command {int /*<<< orphan*/  list; TYPE_2__ hdr; int /*<<< orphan*/  bidi_bio; int /*<<< orphan*/  bio; struct request* rq; } ;
struct TYPE_3__ {int /*<<< orphan*/  bio; } ;

/* Variables and functions */
 int BSG_FLAG_Q_AT_TAIL ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int /*<<< orphan*/ *,struct request*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bsg_rq_end_io ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct request*,struct bsg_command*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct bsg_device *bd, struct request_queue *q,
			    struct bsg_command *bc, struct request *rq)
{
	int at_head = (0 == (bc->hdr.flags & BSG_FLAG_Q_AT_TAIL));

	/*
	 * add bc command to busy queue and submit rq for io
	 */
	bc->rq = rq;
	bc->bio = rq->bio;
	if (rq->next_rq)
		bc->bidi_bio = rq->next_rq->bio;
	bc->hdr.duration = jiffies;
	FUNC3(&bd->lock);
	FUNC2(&bc->list, &bd->busy_list);
	FUNC4(&bd->lock);

	FUNC1("%s: queueing rq %p, bc %p\n", bd->name, rq, bc);

	rq->end_io_data = bc;
	FUNC0(q, NULL, rq, at_head, bsg_rq_end_io);
}