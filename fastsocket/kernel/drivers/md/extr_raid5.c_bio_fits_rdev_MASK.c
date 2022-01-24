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
struct request_queue {scalar_t__ merge_bvec_fn; } ;
struct bio {scalar_t__ bi_phys_segments; int /*<<< orphan*/  bi_bdev; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct bio*) ; 
 scalar_t__ FUNC3 (struct request_queue*) ; 
 scalar_t__ FUNC4 (struct request_queue*) ; 

__attribute__((used)) static int FUNC5(struct bio *bi)
{
	struct request_queue *q = FUNC0(bi->bi_bdev);

	if (FUNC1(bi) > FUNC3(q))
		return 0;
	FUNC2(q, bi);
	if (bi->bi_phys_segments > FUNC4(q))
		return 0;

	if (q->merge_bvec_fn)
		/* it's too hard to apply the merge_bvec_fn at this stage,
		 * just just give up
		 */
		return 0;

	return 1;
}