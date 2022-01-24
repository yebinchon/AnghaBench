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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int READ ; 
 int WRITE ; 
 int __GFP_WAIT ; 
 struct request* FUNC1 (struct request_queue*,int,int /*<<< orphan*/ *,int) ; 
 struct request* FUNC2 (struct request_queue*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

struct request *FUNC5(struct request_queue *q, int rw, gfp_t gfp_mask)
{
	struct request *rq;

	FUNC0(rw != READ && rw != WRITE);

	FUNC3(q->queue_lock);
	if (gfp_mask & __GFP_WAIT)
		rq = FUNC2(q, rw, NULL);
	else
		rq = FUNC1(q, rw, NULL, gfp_mask);
	if (!rq)
		FUNC4(q->queue_lock);
	/* q->queue_lock is unlocked at this point */

	return rq;
}