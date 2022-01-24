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
struct TYPE_9__ {int expires; unsigned long data; int /*<<< orphan*/  function; } ;
struct TYPE_6__ {int /*<<< orphan*/  phy_mutex; } ;
struct bnx2x {int fw_seq; int disable_tpa; int flags; int dropless_fc; int rx_csum; int tx_ticks; int rx_ticks; int current_interval; int max_cos; int min_msix_vec_cnt; int dump_preset_idx; int /*<<< orphan*/  cnic_base_cl_id; TYPE_4__ timer; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  mrrs; TYPE_3__* dev; TYPE_2__* pdev; int /*<<< orphan*/  period_task; int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  sp_task; int /*<<< orphan*/  stats_sema; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  fw_mb_mutex; TYPE_1__ port; } ;
struct TYPE_10__ {int /*<<< orphan*/  drv_mb_header; } ;
struct TYPE_8__ {int /*<<< orphan*/  features; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BNX2X_BTR ; 
 int /*<<< orphan*/  BNX2X_DCBX_ENABLED_OFF ; 
 int /*<<< orphan*/  BNX2X_DCBX_ENABLED_ON_NEG_ON ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct bnx2x*) ; 
 size_t FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 scalar_t__ FUNC7 (struct bnx2x*) ; 
 scalar_t__ FUNC8 (struct bnx2x*) ; 
 int DRV_MSG_SEQ_NUMBER_MASK ; 
 int /*<<< orphan*/  FP_SB_MAX_E1x ; 
 int /*<<< orphan*/  FP_SB_MAX_E2 ; 
 int GRO_ENABLE_FLAG ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct bnx2x*) ; 
 scalar_t__ FUNC11 (struct bnx2x*) ; 
 scalar_t__ FUNC12 (struct bnx2x*) ; 
 scalar_t__ FUNC13 (struct bnx2x*) ; 
 int /*<<< orphan*/  MAX_RX_AVAIL ; 
 int /*<<< orphan*/  MAX_TX_AVAIL ; 
 int /*<<< orphan*/  NETIF_F_GRO ; 
 int /*<<< orphan*/  NETIF_F_LRO ; 
 scalar_t__ FUNC14 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int TPA_ENABLE_FLAG ; 
 int FUNC17 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC18 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC19 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct bnx2x*) ; 
 int FUNC21 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_period_task ; 
 int /*<<< orphan*/  FUNC22 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC23 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC24 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_sp_rtnl_task ; 
 int /*<<< orphan*/  bnx2x_sp_task ; 
 int /*<<< orphan*/  bnx2x_timer ; 
 int /*<<< orphan*/  dcbx_lldp_dcbx_stat_offset ; 
 int /*<<< orphan*/  dcbx_lldp_params_offset ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*) ; 
 int disable_tpa ; 
 int dropless_fc ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 TYPE_5__* func_mb ; 
 int /*<<< orphan*/  FUNC27 (TYPE_4__*) ; 
 int jiffies ; 
 int /*<<< orphan*/  mrrs ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC31(struct bnx2x *bp)
{
	int func;
	int rc;

	FUNC28(&bp->port.phy_mutex);
	FUNC28(&bp->fw_mb_mutex);
	FUNC30(&bp->stats_lock);
	FUNC29(&bp->stats_sema, 1);

	FUNC9(&bp->sp_task, bnx2x_sp_task);
	FUNC9(&bp->sp_rtnl_task, bnx2x_sp_rtnl_task);
	FUNC9(&bp->period_task, bnx2x_period_task);
	if (FUNC12(bp)) {
		rc = FUNC21(bp);
		if (rc)
			return rc;
	} else {
		FUNC26(bp->dev->dev_addr);
	}

	FUNC24(bp);

	rc = FUNC17(bp);
	if (rc)
		return rc;

	FUNC23(bp);

	func = FUNC1(bp);

	/* need to reset chip if undi was active */
	if (FUNC12(bp) && !FUNC3(bp)) {
		/* init fw_seq */
		bp->fw_seq =
			FUNC16(bp, func_mb[FUNC2(bp)].drv_mb_header) &
							DRV_MSG_SEQ_NUMBER_MASK;
		FUNC0("fw_seq 0x%08x\n", bp->fw_seq);

		FUNC22(bp);
	}

	if (FUNC6(bp))
		FUNC25(&bp->pdev->dev, "FPGA detected\n");

	if (FUNC3(bp) && (func == 0))
		FUNC25(&bp->pdev->dev, "MCP disabled, must load devices in order!\n");

	bp->dev->features |= NETIF_F_GRO;

	bp->disable_tpa = disable_tpa;
	bp->disable_tpa |= FUNC11(bp) || FUNC10(bp);

	/* Set TPA flags */
	if (bp->disable_tpa) {
		bp->flags &= ~(TPA_ENABLE_FLAG | GRO_ENABLE_FLAG);
		bp->dev->features &= ~NETIF_F_LRO;
	} else {
		/* RHEL6.3: don't enable GRO_ENABLE_FLAG yet */
		bp->flags |= TPA_ENABLE_FLAG;
		bp->dev->features |= NETIF_F_LRO;
	}

	if (FUNC4(bp))
		bp->dropless_fc = 0;
	else
		bp->dropless_fc = dropless_fc | FUNC20(bp);

	bp->mrrs = mrrs;

	bp->tx_ring_size = FUNC10(bp) ? 0 : MAX_TX_AVAIL;
	if (FUNC13(bp))
		bp->rx_ring_size = MAX_RX_AVAIL;

	bp->rx_csum = 1;

	/* make sure that the numbers are in the right granularity */
	bp->tx_ticks = (50 / BNX2X_BTR) * BNX2X_BTR;
	bp->rx_ticks = (25 / BNX2X_BTR) * BNX2X_BTR;

	bp->current_interval = FUNC7(bp) ? 5*HZ : HZ;

	FUNC27(&bp->timer);
	bp->timer.expires = jiffies + bp->current_interval;
	bp->timer.data = (unsigned long) bp;
	bp->timer.function = bnx2x_timer;

	if (FUNC14(bp, dcbx_lldp_params_offset) &&
	    FUNC14(bp, dcbx_lldp_dcbx_stat_offset) &&
	    FUNC15(bp, dcbx_lldp_params_offset) &&
	    FUNC15(bp, dcbx_lldp_dcbx_stat_offset)) {
		FUNC19(bp, true, BNX2X_DCBX_ENABLED_ON_NEG_ON);
		FUNC18(bp);
	} else {
		FUNC19(bp, false, BNX2X_DCBX_ENABLED_OFF);
	}

	if (FUNC5(bp))
		bp->cnic_base_cl_id = FP_SB_MAX_E1x;
	else
		bp->cnic_base_cl_id = FP_SB_MAX_E2;

	bp->max_cos = 1;

	/* We need at least one default status block for slow-path events,
	 * second status block for the L2 queue, and a third status block for
	 * CNIC if supported.
	 */
	if (FUNC8(bp))
		bp->min_msix_vec_cnt = 3;
	else
		bp->min_msix_vec_cnt = 2;
	FUNC0("bp->min_msix_vec_cnt %d", bp->min_msix_vec_cnt);

	bp->dump_preset_idx = 1;

	return rc;
}