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
struct nvme_queue {int /*<<< orphan*/  sq_cong; int /*<<< orphan*/  sq_cong_wait; int /*<<< orphan*/  sq_full; } ;
struct nvme_bio_pair {int /*<<< orphan*/  b2; int /*<<< orphan*/  b1; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct nvme_bio_pair* FUNC3 (struct bio*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct bio *bio, struct nvme_queue *nvmeq,
						int idx, int len, int offset)
{
	struct nvme_bio_pair *bp = FUNC3(bio, idx, len, offset);
	if (!bp)
		return -ENOMEM;

	if (FUNC2(&nvmeq->sq_cong))
		FUNC0(&nvmeq->sq_full, &nvmeq->sq_cong_wait);
	FUNC1(&nvmeq->sq_cong, &bp->b1);
	FUNC1(&nvmeq->sq_cong, &bp->b2);

	return 0;
}