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
struct TYPE_2__ {int* count; int* starved; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; TYPE_1__ rq; } ;
struct request {int /*<<< orphan*/  errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct request_queue *q)
{
	struct request *req; /* block request */
	int counts; /* totals for request_list count and starved */

	if (!q)
		return;

	/* Stop taking in new requests */
	FUNC5(q->queue_lock);
	FUNC2(q);

	/* drain all requests in the queue */
	while (1) {
		/* need the lock to fetch a request
		 * this may fetch the same reqeust as the previous pass
		 */
		req = FUNC1(q);
		/* save requests in use and starved */
		counts = q->rq.count[0] + q->rq.count[1] +
			 q->rq.starved[0] + q->rq.starved[1];
		FUNC6(q->queue_lock);
		/* any requests still outstanding? */
		if (counts == 0)
			break;

		/* This may be the same req as the previous iteration,
		 * always send the blk_end_request_all after a prefetch.
		 * It is not okay to not end the request because the
		 * prefetch started the request.
		 */
		if (req) {
			/* return -ENXIO to indicate that this queue is
			 * going away
			 */
			req->errors = -ENXIO;
			FUNC0(req, -ENXIO);
		}

		FUNC4(200); /* allow bsg to possibly finish */
		FUNC5(q->queue_lock);
	}
	FUNC3(q);
}