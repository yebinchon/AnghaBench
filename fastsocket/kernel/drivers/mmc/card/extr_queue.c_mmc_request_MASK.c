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
struct request_queue {struct mmc_queue* queuedata; } ;
struct request {int /*<<< orphan*/  cmd_flags; } ;
struct mmc_queue {int /*<<< orphan*/  thread; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  REQ_QUIET ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct request_queue *q)
{
	struct mmc_queue *mq = q->queuedata;
	struct request *req;

	if (!mq) {
		while ((req = FUNC1(q)) != NULL) {
			req->cmd_flags |= REQ_QUIET;
			FUNC0(req, -EIO);
		}
		return;
	}

	if (!mq->req)
		FUNC2(mq->thread);
}