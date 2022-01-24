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
struct net_device {int dummy; } ;
struct cnic_eth_dev {int max_kwqe_pending; int starting_cid; int /*<<< orphan*/  ctx_tbl_len; scalar_t__ ctx_tbl_offset; int /*<<< orphan*/  ctx_blk_size; int /*<<< orphan*/  drv_state; int /*<<< orphan*/  iscsi_l2_cid; int /*<<< orphan*/  iscsi_l2_client_id; int /*<<< orphan*/  fcoe_init_cid; int /*<<< orphan*/  drv_unregister_cnic; int /*<<< orphan*/  drv_register_cnic; int /*<<< orphan*/  drv_ctl; int /*<<< orphan*/  drv_submit_kwqes_16; int /*<<< orphan*/  io_base2; int /*<<< orphan*/  io_base; int /*<<< orphan*/  pdev; int /*<<< orphan*/  chip_id; int /*<<< orphan*/  drv_owner; } ;
struct bnx2x {int /*<<< orphan*/  doorbells; int /*<<< orphan*/  regview; int /*<<< orphan*/  pdev; struct cnic_eth_dev cnic_eth_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  BNX2X_ISCSI_ETH_CL_ID_IDX ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  CDU_ILT_PAGE_SZ ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  CNIC_DRV_STATE_NO_FCOE ; 
 int /*<<< orphan*/  CNIC_DRV_STATE_NO_ISCSI ; 
 int /*<<< orphan*/  CNIC_DRV_STATE_NO_ISCSI_OOO ; 
 int /*<<< orphan*/  CNIC_ILT_LINES ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int ILT_PAGE_CIDS ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 scalar_t__ FUNC7 (struct bnx2x*) ; 
 scalar_t__ FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC9 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnx2x_cnic_sp_queue ; 
 int /*<<< orphan*/  bnx2x_drv_ctl ; 
 int /*<<< orphan*/  bnx2x_register_cnic ; 
 int /*<<< orphan*/  bnx2x_unregister_cnic ; 
 struct bnx2x* FUNC11 (struct net_device*) ; 

struct cnic_eth_dev *FUNC12(struct net_device *dev)
{
	struct bnx2x *bp = FUNC11(dev);
	struct cnic_eth_dev *cp = &bp->cnic_eth_dev;

	/* If both iSCSI and FCoE are disabled - return NULL in
	 * order to indicate CNIC that it should not try to work
	 * with this device.
	 */
	if (FUNC7(bp) && FUNC6(bp))
		return NULL;

	cp->drv_owner = THIS_MODULE;
	cp->chip_id = FUNC4(bp);
	cp->pdev = bp->pdev;
	cp->io_base = bp->regview;
	cp->io_base2 = bp->doorbells;
	cp->max_kwqe_pending = 8;
	cp->ctx_blk_size = CDU_ILT_PAGE_SZ;
	cp->ctx_tbl_offset = FUNC5(FUNC3(bp)) +
			     FUNC9(bp);
	cp->ctx_tbl_len = CNIC_ILT_LINES;
	cp->starting_cid = FUNC9(bp) * ILT_PAGE_CIDS;
	cp->drv_submit_kwqes_16 = bnx2x_cnic_sp_queue;
	cp->drv_ctl = bnx2x_drv_ctl;
	cp->drv_register_cnic = bnx2x_register_cnic;
	cp->drv_unregister_cnic = bnx2x_unregister_cnic;
	cp->fcoe_init_cid = FUNC1(bp);
	cp->iscsi_l2_client_id =
		FUNC10(bp, BNX2X_ISCSI_ETH_CL_ID_IDX);
	cp->iscsi_l2_cid = FUNC2(bp);

	if (FUNC8(bp))
		cp->drv_state |= CNIC_DRV_STATE_NO_ISCSI_OOO;

	if (FUNC7(bp))
		cp->drv_state |= CNIC_DRV_STATE_NO_ISCSI;

	if (FUNC6(bp))
		cp->drv_state |= CNIC_DRV_STATE_NO_FCOE;

	FUNC0(
		"page_size %d, tbl_offset %d, tbl_lines %d, starting cid %d\n",
	   cp->ctx_blk_size,
	   cp->ctx_tbl_offset,
	   cp->ctx_tbl_len,
	   cp->starting_cid);
	return cp;
}