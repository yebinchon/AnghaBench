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
struct request_queue {int dummy; } ;
struct request {int cmd_flags; scalar_t__ rq_disk; int /*<<< orphan*/ * bio; int /*<<< orphan*/  cpu; int /*<<< orphan*/  ioprio; int /*<<< orphan*/  __data_len; TYPE_1__* biotail; int /*<<< orphan*/  start_time; scalar_t__ special; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bi_next; } ;

/* Variables and functions */
 int REQ_DISCARD ; 
 int REQ_FAILFAST_MASK ; 
 int REQ_MIXED_MERGE ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct request*) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,struct request*,struct request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct request_queue*,struct request*,struct request*) ; 
 scalar_t__ FUNC11 (struct request*) ; 
 int /*<<< orphan*/  FUNC12 (struct request*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct request_queue *q, struct request *req,
			  struct request *next)
{
	if (!FUNC12(req) || !FUNC12(next))
		return 0;

	/*
	 * Don't merge file system requests and discard requests
	 */
	if ((req->cmd_flags & REQ_DISCARD) != (next->cmd_flags & REQ_DISCARD))
		return 0;

	/*
	 * not contiguous
	 */
	if (FUNC5(req) + FUNC6(req) != FUNC5(next))
		return 0;

	if (FUNC11(req) != FUNC11(next)
	    || req->rq_disk != next->rq_disk
	    || next->special)
		return 0;

	if (FUNC2(req) != FUNC2(next))
		return 0;

	/*
	 * If we are allowed to merge, then append bio list
	 * from next to rq and release next. merge_requests_fn
	 * will have updated segment counts, update sector
	 * counts here.
	 */
	if (!FUNC10(q, req, next))
		return 0;

	/*
	 * If failfast settings disagree or any of the two is already
	 * a mixed merge, mark both as mixed before proceeding.  This
	 * makes sure that all involved bios have mixable attributes
	 * set properly.
	 */
	if ((req->cmd_flags | next->cmd_flags) & REQ_MIXED_MERGE ||
	    (req->cmd_flags & REQ_FAILFAST_MASK) !=
	    (next->cmd_flags & REQ_FAILFAST_MASK)) {
		FUNC7(req);
		FUNC7(next);
	}

	/*
	 * At this point we have either done a back merge
	 * or front merge. We need the smaller start_time of
	 * the merged requests to be the current request
	 * for accounting purposes.
	 */
	if (FUNC13(req->start_time, next->start_time))
		req->start_time = next->start_time;

	req->biotail->bi_next = next->bio;
	req->biotail = next->biotail;

	req->__data_len += FUNC3(next);

	FUNC8(q, req, next);

	/*
	 * 'next' is going away, so update stats accordingly
	 */
	FUNC1(next);

	req->ioprio = FUNC9(req->ioprio, next->ioprio);
	if (FUNC4(next))
		req->cpu = next->cpu;

	/* owner-ship of bio passed from next to req */
	next->bio = NULL;
	FUNC0(q, next);
	return 1;
}