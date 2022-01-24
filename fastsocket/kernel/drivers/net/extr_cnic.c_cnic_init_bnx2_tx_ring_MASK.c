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
typedef  int u64 ;
typedef  int u32 ;
struct status_block_msix {int /*<<< orphan*/  status_tx_quick_consumer_index; } ;
struct status_block {int /*<<< orphan*/  status_tx_quick_consumer_index2; } ;
struct cnic_uio_dev {scalar_t__ l2_buf_map; struct bnx2_tx_bd* l2_ring; scalar_t__ l2_ring_map; } ;
struct TYPE_2__ {struct status_block_msix* bnx2; struct status_block* gen; } ;
struct cnic_local {int status_blk_num; int /*<<< orphan*/ * tx_cons_ptr; int /*<<< orphan*/  tx_cons; TYPE_1__ status_blk; struct cnic_uio_dev* udev; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct bnx2_tx_bd {int tx_bd_haddr_hi; int tx_bd_haddr_lo; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cnic_local*) ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 int BNX2_L2CTX_CMD_TYPE ; 
 int BNX2_L2CTX_CMD_TYPE_TYPE_L2 ; 
 int BNX2_L2CTX_CMD_TYPE_XI ; 
 int BNX2_L2CTX_TBDR_BHADDR_HI ; 
 int BNX2_L2CTX_TBDR_BHADDR_HI_XI ; 
 int BNX2_L2CTX_TBDR_BHADDR_LO ; 
 int BNX2_L2CTX_TBDR_BHADDR_LO_XI ; 
 int BNX2_L2CTX_TYPE ; 
 int BNX2_L2CTX_TYPE_SIZE_L2 ; 
 int BNX2_L2CTX_TYPE_TYPE_L2 ; 
 int BNX2_L2CTX_TYPE_XI ; 
 int BNX2_MAX_TX_DESC_CNT ; 
 int /*<<< orphan*/  BNX2_TSCH_TSS_CFG ; 
 int CNIC_DRV_STATE_USING_MSIX ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int PHY_CTX_SIZE ; 
 int TX_TSS_CID ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_dev*,int) ; 

__attribute__((used)) static void FUNC5(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_eth_dev *ethdev = cp->ethdev;
	struct cnic_uio_dev *udev = cp->udev;
	u32 cid_addr, tx_cid, sb_id;
	u32 val, offset0, offset1, offset2, offset3;
	int i;
	struct bnx2_tx_bd *txbd;
	dma_addr_t buf_map, ring_map = udev->l2_ring_map;
	struct status_block *s_blk = cp->status_blk.gen;

	sb_id = cp->status_blk_num;
	tx_cid = 20;
	cp->tx_cons_ptr = &s_blk->status_tx_quick_consumer_index2;
	if (ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX) {
		struct status_block_msix *sblk = cp->status_blk.bnx2;

		tx_cid = TX_TSS_CID + sb_id - 1;
		FUNC1(dev, BNX2_TSCH_TSS_CFG, (sb_id << 24) |
			(TX_TSS_CID << 7));
		cp->tx_cons_ptr = &sblk->status_tx_quick_consumer_index;
	}
	cp->tx_cons = *cp->tx_cons_ptr;

	cid_addr = FUNC2(tx_cid);
	if (FUNC0(cp) == BNX2_CHIP_5709) {
		u32 cid_addr2 = FUNC2(tx_cid + 4) + 0x40;

		for (i = 0; i < PHY_CTX_SIZE; i += 4)
			FUNC3(dev, cid_addr2, i, 0);

		offset0 = BNX2_L2CTX_TYPE_XI;
		offset1 = BNX2_L2CTX_CMD_TYPE_XI;
		offset2 = BNX2_L2CTX_TBDR_BHADDR_HI_XI;
		offset3 = BNX2_L2CTX_TBDR_BHADDR_LO_XI;
	} else {
		FUNC4(dev, tx_cid);
		FUNC4(dev, tx_cid + 1);

		offset0 = BNX2_L2CTX_TYPE;
		offset1 = BNX2_L2CTX_CMD_TYPE;
		offset2 = BNX2_L2CTX_TBDR_BHADDR_HI;
		offset3 = BNX2_L2CTX_TBDR_BHADDR_LO;
	}
	val = BNX2_L2CTX_TYPE_TYPE_L2 | BNX2_L2CTX_TYPE_SIZE_L2;
	FUNC3(dev, cid_addr, offset0, val);

	val = BNX2_L2CTX_CMD_TYPE_TYPE_L2 | (8 << 16);
	FUNC3(dev, cid_addr, offset1, val);

	txbd = udev->l2_ring;

	buf_map = udev->l2_buf_map;
	for (i = 0; i < BNX2_MAX_TX_DESC_CNT; i++, txbd++) {
		txbd->tx_bd_haddr_hi = (u64) buf_map >> 32;
		txbd->tx_bd_haddr_lo = (u64) buf_map & 0xffffffff;
	}
	val = (u64) ring_map >> 32;
	FUNC3(dev, cid_addr, offset2, val);
	txbd->tx_bd_haddr_hi = val;

	val = (u64) ring_map & 0xffffffff;
	FUNC3(dev, cid_addr, offset3, val);
	txbd->tx_bd_haddr_lo = val;
}