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
struct bnx2x {scalar_t__ spq_prod_bd; scalar_t__ spq_last_bd; scalar_t__ spq; int /*<<< orphan*/  dsb_sp_prod; scalar_t__ spq_prod_idx; int /*<<< orphan*/  cq_spq_left; int /*<<< orphan*/  spq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_SP_DSB_INDEX ; 
 int /*<<< orphan*/  MAX_SPQ_PENDING ; 
 scalar_t__ MAX_SP_DESC_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp)
{
	FUNC1(&bp->spq_lock);
	FUNC0(&bp->cq_spq_left, MAX_SPQ_PENDING);

	bp->spq_prod_idx = 0;
	bp->dsb_sp_prod = BNX2X_SP_DSB_INDEX;
	bp->spq_prod_bd = bp->spq;
	bp->spq_last_bd = bp->spq_prod_bd + MAX_SP_DESC_CNT;
}