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
struct request {scalar_t__ nr_phys_segments; int /*<<< orphan*/  cmd_flags; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_NOMERGE ; 
 int FUNC0 (struct request_queue*,struct bio*) ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 

__attribute__((used)) static inline int FUNC2(struct request_queue *q,
				    struct request *req,
				    struct bio *bio)
{
	int nr_phys_segs = FUNC0(q, bio);

	if (req->nr_phys_segments + nr_phys_segs > FUNC1(q)) {
		req->cmd_flags |= REQ_NOMERGE;
		if (req == q->last_merge)
			q->last_merge = NULL;
		return 0;
	}

	/*
	 * This will form the start of a new hw segment.  Bump both
	 * counters.
	 */
	req->nr_phys_segments += nr_phys_segs;
	return 1;
}