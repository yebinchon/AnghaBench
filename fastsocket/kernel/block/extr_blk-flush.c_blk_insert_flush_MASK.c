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
struct request_queue {unsigned int flush_flags; int /*<<< orphan*/  queue_head; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct request {int end_io; scalar_t__ bio; scalar_t__ biotail; unsigned int cmd_flags; TYPE_1__ flush; int /*<<< orphan*/  queuelist; struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int REQ_FLUSH ; 
 unsigned int REQ_FLUSH_SEQ ; 
 unsigned int REQ_FSEQ_ACTIONS ; 
 unsigned int REQ_FSEQ_DATA ; 
 unsigned int REQ_FSEQ_POSTFLUSH ; 
 unsigned int REQ_FSEQ_PREFLUSH ; 
 unsigned int REQ_FUA ; 
 int /*<<< orphan*/  FUNC2 (struct request*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,struct request*) ; 
 int flush_data_end_io ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct request *rq)
{
	struct request_queue *q = rq->q;
	unsigned int fflags = q->flush_flags;	/* may change, cache */
	unsigned int policy = FUNC3(fflags, rq);

	FUNC0(rq->end_io);
	FUNC0(!rq->bio || rq->bio != rq->biotail);

	/*
	 * @policy now records what operations need to be done.  Adjust
	 * REQ_FLUSH and FUA for the driver.
	 */
	rq->cmd_flags &= ~REQ_FLUSH;
	if (!(fflags & REQ_FUA))
		rq->cmd_flags &= ~REQ_FUA;

	/*
	 * If there's data but flush is not necessary, the request can be
	 * processed directly without going through flush machinery.  Queue
	 * for normal execution.
	 */
	if ((policy & REQ_FSEQ_DATA) &&
	    !(policy & (REQ_FSEQ_PREFLUSH | REQ_FSEQ_POSTFLUSH))) {
		FUNC4(&rq->queuelist, &q->queue_head);
		return;
	}

	/*
	 * @rq should go through flush machinery.  Mark it part of flush
	 * sequence and submit for further processing.
	 */
	FUNC5(&rq->flush, 0, sizeof(rq->flush));
	FUNC1(&rq->flush.list);
	rq->cmd_flags |= REQ_FLUSH_SEQ;
	rq->end_io = flush_data_end_io;

	FUNC2(rq, REQ_FSEQ_ACTIONS & ~policy, 0);
}