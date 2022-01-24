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
struct nvme_bio_pair {int err; struct nvme_bio_pair* bv2; struct nvme_bio_pair* bv1; int /*<<< orphan*/  parent; int /*<<< orphan*/  cnt; } ;
struct bio {struct nvme_bio_pair* bi_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_bio_pair*) ; 

__attribute__((used)) static void FUNC3(struct bio *bio, int err)
{
	struct nvme_bio_pair *bp = bio->bi_private;

	if (err)
		bp->err = err;

	if (FUNC0(&bp->cnt)) {
		FUNC1(bp->parent, bp->err);
		FUNC2(bp->bv1);
		FUNC2(bp->bv2);
		FUNC2(bp);
	}
}