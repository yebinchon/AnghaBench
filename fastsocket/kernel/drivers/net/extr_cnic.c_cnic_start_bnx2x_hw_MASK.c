#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {int* pg_map_arr; } ;
struct TYPE_8__ {int* pg_map_arr; } ;
struct TYPE_9__ {TYPE_3__ dma; scalar_t__ io_addr; } ;
struct cnic_local {TYPE_5__ gbl_buf_info; int /*<<< orphan*/  status_blk_num; TYPE_4__ kcq1; int /*<<< orphan*/  bnx2x_igu_sb_id; int /*<<< orphan*/  fcoe_start_cid; int /*<<< orphan*/  fcoe_cid_tbl; int /*<<< orphan*/  iscsi_start_cid; int /*<<< orphan*/  cid_tbl; int /*<<< orphan*/  pfid; int /*<<< orphan*/  func; int /*<<< orphan*/  port_mode; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int /*<<< orphan*/  drv_state; TYPE_2__* irq_arr; int /*<<< orphan*/  addr_drv_info_to_mcp; } ;
struct cnic_dev {int /*<<< orphan*/  max_fcoe_conn; int /*<<< orphan*/  stats_addr; int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  chip_port_mode; } ;
struct bnx2x {int /*<<< orphan*/  pf_num; int /*<<< orphan*/  pfid; TYPE_1__ common; } ;
struct TYPE_7__ {int /*<<< orphan*/  status_blk_num2; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ BAR_TSTRORM_INTMEM ; 
 scalar_t__ BAR_USTRORM_INTMEM ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  CNIC_DRV_STATE_HANDLES_IRQ ; 
 int FUNC1 (struct cnic_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_dev*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DEF_RCV_BUF ; 
 int ENOMEM ; 
 int HC_INDEX_ISCSI_EQ_CONS ; 
 int /*<<< orphan*/  MAX_ISCSI_TBL_SZ ; 
 int /*<<< orphan*/  MAX_KCQ_IDX ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct cnic_dev*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct cnic_dev*) ; 
 struct bnx2x* FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct bnx2x *bp = FUNC17(dev->netdev);
	struct cnic_eth_dev *ethdev = cp->ethdev;
	int func, ret;
	u32 pfid;

	dev->stats_addr = ethdev->addr_drv_info_to_mcp;
	cp->port_mode = bp->common.chip_port_mode;
	cp->pfid = bp->pfid;
	cp->func = bp->pf_num;

	func = FUNC1(cp);
	pfid = cp->pfid;

	ret = FUNC15(&cp->cid_tbl, MAX_ISCSI_TBL_SZ,
			       cp->iscsi_start_cid, 0);

	if (ret)
		return -ENOMEM;

	if (FUNC0(bp)) {
		ret = FUNC15(&cp->fcoe_cid_tbl, dev->max_fcoe_conn,
					cp->fcoe_start_cid, 0);

		if (ret)
			return -ENOMEM;
	}

	cp->bnx2x_igu_sb_id = ethdev->irq_arr[0].status_blk_num2;

	FUNC14(dev);

	/* Only 1 EQ */
	FUNC3(dev, cp->kcq1.io_addr, MAX_KCQ_IDX);
	FUNC2(dev, BAR_CSTRORM_INTMEM +
		FUNC5(pfid, 0), 0);
	FUNC2(dev, BAR_CSTRORM_INTMEM +
		FUNC7(pfid, 0),
		cp->kcq1.dma.pg_map_arr[1] & 0xffffffff);
	FUNC2(dev, BAR_CSTRORM_INTMEM +
		FUNC7(pfid, 0) + 4,
		(u64) cp->kcq1.dma.pg_map_arr[1] >> 32);
	FUNC2(dev, BAR_CSTRORM_INTMEM +
		FUNC6(pfid, 0),
		cp->kcq1.dma.pg_map_arr[0] & 0xffffffff);
	FUNC2(dev, BAR_CSTRORM_INTMEM +
		FUNC6(pfid, 0) + 4,
		(u64) cp->kcq1.dma.pg_map_arr[0] >> 32);
	FUNC4(dev, BAR_CSTRORM_INTMEM +
		FUNC8(pfid, 0), 1);
	FUNC3(dev, BAR_CSTRORM_INTMEM +
		FUNC10(pfid, 0), cp->status_blk_num);
	FUNC4(dev, BAR_CSTRORM_INTMEM +
		FUNC9(pfid, 0),
		HC_INDEX_ISCSI_EQ_CONS);

	FUNC2(dev, BAR_USTRORM_INTMEM +
		FUNC12(pfid),
		cp->gbl_buf_info.pg_map_arr[0] & 0xffffffff);
	FUNC2(dev, BAR_USTRORM_INTMEM +
		FUNC12(pfid) + 4,
		(u64) cp->gbl_buf_info.pg_map_arr[0] >> 32);

	FUNC2(dev, BAR_TSTRORM_INTMEM +
		FUNC11(pfid), DEF_RCV_BUF);

	FUNC16(dev);

	ret = FUNC13(dev);
	if (ret)
		return ret;

	ethdev->drv_state |= CNIC_DRV_STATE_HANDLES_IRQ;
	return 0;
}