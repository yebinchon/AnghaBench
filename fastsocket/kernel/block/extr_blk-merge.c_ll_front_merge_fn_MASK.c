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
struct request_queue {struct request* last_merge; } ;
struct request {struct bio* bio; int /*<<< orphan*/  cmd_flags; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_SEG_VALID ; 
 int /*<<< orphan*/  REQ_NOMERGE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct bio*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 int FUNC5 (struct request_queue*,struct request*,struct bio*) ; 

int FUNC6(struct request_queue *q, struct request *req,
		      struct bio *bio)
{
	if (FUNC4(req) + FUNC1(bio) >
	    FUNC3(req)) {
		req->cmd_flags |= REQ_NOMERGE;
		if (req == q->last_merge)
			q->last_merge = NULL;
		return 0;
	}
	if (!FUNC0(bio, BIO_SEG_VALID))
		FUNC2(q, bio);
	if (!FUNC0(req->bio, BIO_SEG_VALID))
		FUNC2(q, req->bio);

	return FUNC5(q, req, bio);
}