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
struct cnic_eth_dev {int starting_cid; int /*<<< orphan*/  drv_state; int /*<<< orphan*/  iscsi_l2_cid; int /*<<< orphan*/  fcoe_init_cid; scalar_t__ ctx_tbl_offset; } ;
struct bnx2x {struct cnic_eth_dev cnic_eth_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  CNIC_DRV_STATE_NO_ISCSI_OOO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int ILT_PAGE_CIDS ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int FUNC5 (struct bnx2x*) ; 

void FUNC6(struct bnx2x *bp)
{
	struct cnic_eth_dev *cp = &bp->cnic_eth_dev;

	cp->ctx_tbl_offset = FUNC3(FUNC2(bp)) +
			     FUNC5(bp);
	cp->starting_cid = FUNC5(bp) * ILT_PAGE_CIDS;
	cp->fcoe_init_cid = FUNC0(bp);
	cp->iscsi_l2_cid = FUNC1(bp);

	if (FUNC4(bp))
		cp->drv_state |= CNIC_DRV_STATE_NO_ISCSI_OOO;
}