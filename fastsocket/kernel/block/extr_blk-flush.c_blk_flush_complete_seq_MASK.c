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
struct list_head {int dummy; } ;
struct request_queue {size_t flush_pending_idx; int /*<<< orphan*/  queue_head; struct list_head flush_data_in_flight; int /*<<< orphan*/  flush_pending_since; struct list_head* flush_queue; } ;
struct TYPE_2__ {unsigned int seq; int /*<<< orphan*/  list; } ;
struct request {TYPE_1__ flush; struct list_head queuelist; struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  REQ_FSEQ_DATA 131 
#define  REQ_FSEQ_DONE 130 
#define  REQ_FSEQ_POSTFLUSH 129 
#define  REQ_FSEQ_PREFLUSH 128 
 int /*<<< orphan*/  FUNC2 (struct request*,int) ; 
 unsigned int FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static bool FUNC11(struct request *rq, unsigned int seq,
				   int error)
{
	struct request_queue *q = rq->q;
	struct list_head *pending = &q->flush_queue[q->flush_pending_idx];
	bool queued = false;

	FUNC1(rq->flush.seq & seq);
	rq->flush.seq |= seq;

	if (FUNC6(!error))
		seq = FUNC3(rq);
	else
		seq = REQ_FSEQ_DONE;

	switch (seq) {
	case REQ_FSEQ_PREFLUSH:
	case REQ_FSEQ_POSTFLUSH:
		/* queue for flush */
		if (FUNC9(pending))
			q->flush_pending_since = jiffies;
		FUNC10(&rq->flush.list, pending);
		break;

	case REQ_FSEQ_DATA:
		FUNC10(&rq->flush.list, &q->flush_data_in_flight);
		FUNC7(&rq->queuelist, &q->queue_head);
		queued = true;
		break;

	case REQ_FSEQ_DONE:
		/*
		 * @rq was previously adjusted by blk_flush_issue() for
		 * flush sequencing and may already have gone through the
		 * flush data request completion path.  Restore @rq for
		 * normal completion and end it.
		 */
		FUNC1(!FUNC9(&rq->queuelist));
		FUNC8(&rq->flush.list);
		FUNC4(rq);
		FUNC2(rq, error);
		break;

	default:
		FUNC0();
	}

	return FUNC5(q) | queued;
}