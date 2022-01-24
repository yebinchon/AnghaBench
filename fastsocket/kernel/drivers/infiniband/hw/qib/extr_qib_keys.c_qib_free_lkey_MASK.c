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
typedef  int u32 ;
struct qib_mregion {int lkey; scalar_t__ lkey_published; TYPE_1__* pd; } ;
struct qib_lkey_table {int /*<<< orphan*/  lock; int /*<<< orphan*/ * table; } ;
struct qib_ibdev {int /*<<< orphan*/  dma_mr; struct qib_lkey_table lk_table; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ib_qib_lkey_table_size ; 
 int /*<<< orphan*/  FUNC0 (struct qib_mregion*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct qib_ibdev* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct qib_mregion *mr)
{
	unsigned long flags;
	u32 lkey = mr->lkey;
	u32 r;
	struct qib_ibdev *dev = FUNC4(mr->pd->device);
	struct qib_lkey_table *rkt = &dev->lk_table;

	FUNC2(&rkt->lock, flags);
	if (!mr->lkey_published)
		goto out;
	if (lkey == 0)
		FUNC1(dev->dma_mr, NULL);
	else {
		r = lkey >> (32 - ib_qib_lkey_table_size);
		FUNC1(rkt->table[r], NULL);
	}
	FUNC0(mr);
	mr->lkey_published = 0;
out:
	FUNC3(&rkt->lock, flags);
}