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
struct TYPE_4__ {int /*<<< orphan*/ * msi; } ;
struct bnx2_napi {TYPE_2__ status_blk; } ;
struct bnx2 {int ctx_pages; int /*<<< orphan*/ * stats_blk; int /*<<< orphan*/  status_blk_mapping; int /*<<< orphan*/  status_stats_size; TYPE_1__* pdev; int /*<<< orphan*/ ** ctx_blk; int /*<<< orphan*/ * ctx_blk_mapping; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bnx2 *bp)
{
	int i;
	struct bnx2_napi *bnapi = &bp->bnx2_napi[0];

	FUNC1(bp);
	FUNC0(bp);

	for (i = 0; i < bp->ctx_pages; i++) {
		if (bp->ctx_blk[i]) {
			FUNC2(&bp->pdev->dev, BNX2_PAGE_SIZE,
					  bp->ctx_blk[i],
					  bp->ctx_blk_mapping[i]);
			bp->ctx_blk[i] = NULL;
		}
	}
	if (bnapi->status_blk.msi) {
		FUNC2(&bp->pdev->dev, bp->status_stats_size,
				  bnapi->status_blk.msi,
				  bp->status_blk_mapping);
		bnapi->status_blk.msi = NULL;
		bp->stats_blk = NULL;
	}
}