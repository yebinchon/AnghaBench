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
struct request_queue {int /*<<< orphan*/  queue_flags; } ;
struct bio {scalar_t__ bi_seg_back_size; scalar_t__ bi_seg_front_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request_queue*,struct bio*,struct bio*) ; 
 int /*<<< orphan*/  QUEUE_FLAG_CLUSTER ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 scalar_t__ FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct request_queue *q, struct bio *bio,
				   struct bio *nxt)
{
	if (!FUNC6(QUEUE_FLAG_CLUSTER, &q->queue_flags))
		return 0;

	if (bio->bi_seg_back_size + nxt->bi_seg_front_size >
	    FUNC5(q))
		return 0;

	if (!FUNC4(bio))
		return 1;

	if (!FUNC0(FUNC2(bio), FUNC3(nxt)))
		return 0;

	/*
	 * bio and nxt are contiguous in memory; check if the queue allows
	 * these two to be merged into one
	 */
	if (FUNC1(q, bio, nxt))
		return 1;

	return 0;
}