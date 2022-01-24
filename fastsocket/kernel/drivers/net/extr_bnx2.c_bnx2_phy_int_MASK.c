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
struct bnx2_napi {int dummy; } ;
struct bnx2 {int /*<<< orphan*/  phy_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_ATTN_BITS_LINK_STATE ; 
 int /*<<< orphan*/  STATUS_ATTN_BITS_TIMER_ABORT ; 
 scalar_t__ FUNC0 (struct bnx2*,struct bnx2_napi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bnx2 *bp, struct bnx2_napi *bnapi)
{
	FUNC3(&bp->phy_lock);

	if (FUNC0(bp, bnapi, STATUS_ATTN_BITS_LINK_STATE))
		FUNC1(bp);
	if (FUNC0(bp, bnapi, STATUS_ATTN_BITS_TIMER_ABORT))
		FUNC2(bp);

	FUNC4(&bp->phy_lock);

}