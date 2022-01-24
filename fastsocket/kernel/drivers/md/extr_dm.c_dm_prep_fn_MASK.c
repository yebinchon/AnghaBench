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
struct request_queue {struct mapped_device* queuedata; } ;
struct request {int /*<<< orphan*/  cmd_flags; struct request* special; } ;
struct mapped_device {int dummy; } ;

/* Variables and functions */
 int BLKPREP_DEFER ; 
 int BLKPREP_KILL ; 
 int BLKPREP_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  REQ_DONTPREP ; 
 struct request* FUNC1 (struct request*,struct mapped_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct request*) ; 

__attribute__((used)) static int FUNC3(struct request_queue *q, struct request *rq)
{
	struct mapped_device *md = q->queuedata;
	struct request *clone;

	if (FUNC2(rq->special)) {
		FUNC0("Already has something in rq->special.");
		return BLKPREP_KILL;
	}

	clone = FUNC1(rq, md, GFP_ATOMIC);
	if (!clone)
		return BLKPREP_DEFER;

	rq->special = clone;
	rq->cmd_flags |= REQ_DONTPREP;

	return BLKPREP_OK;
}