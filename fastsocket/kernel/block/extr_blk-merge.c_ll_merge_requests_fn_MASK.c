#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct request {int nr_phys_segments; TYPE_1__* biotail; TYPE_2__* bio; scalar_t__ special; } ;
struct TYPE_4__ {unsigned int bi_seg_front_size; } ;
struct TYPE_3__ {unsigned int bi_seg_back_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request_queue*,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int FUNC3 (struct request_queue*) ; 

__attribute__((used)) static int FUNC4(struct request_queue *q, struct request *req,
				struct request *next)
{
	int total_phys_segments;
	unsigned int seg_size =
		req->biotail->bi_seg_back_size + next->bio->bi_seg_front_size;

	/*
	 * First check if the either of the requests are re-queued
	 * requests.  Can't merge them if they are.
	 */
	if (req->special || next->special)
		return 0;

	/*
	 * Will it become too large?
	 */
	if ((FUNC2(req) + FUNC2(next)) >
	    FUNC1(req))
		return 0;

	total_phys_segments = req->nr_phys_segments + next->nr_phys_segments;
	if (FUNC0(q, req->biotail, next->bio)) {
		if (req->nr_phys_segments == 1)
			req->bio->bi_seg_front_size = seg_size;
		if (next->nr_phys_segments == 1)
			next->biotail->bi_seg_back_size = seg_size;
		total_phys_segments--;
	}

	if (total_phys_segments > FUNC3(q))
		return 0;

	/* Merge is OK... */
	req->nr_phys_segments = total_phys_segments;
	return 1;
}