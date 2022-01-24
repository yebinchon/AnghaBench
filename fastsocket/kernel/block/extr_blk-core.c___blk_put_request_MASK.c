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
struct request {int ref_count; int cmd_flags; int /*<<< orphan*/  hash; int /*<<< orphan*/  queuelist; int /*<<< orphan*/ * bio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REQ_ALLOCED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct request_queue *q, struct request *req)
{
	if (FUNC7(!q))
		return;
	if (FUNC7(--req->ref_count))
		return;

	FUNC3(q, req);

	/* this is a bio leak */
	FUNC1(req->bio != NULL);

	/*
	 * Request may not have originated from ll_rw_blk. if not,
	 * it didn't come out of our reserved rq pools
	 */
	if (req->cmd_flags & REQ_ALLOCED) {
		unsigned int flags = req->cmd_flags;

		FUNC0(!FUNC6(&req->queuelist));
		FUNC0(!FUNC5(&req->hash));

		FUNC2(q, req);
		FUNC4(q, flags);
	}
}