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
struct status_block_msix {scalar_t__ status_rx_quick_consumer_index; } ;
struct status_block {scalar_t__ status_rx_quick_consumer_index2; } ;
struct cnic_uio_dev {int l2_ring_map; int l2_buf_map; struct bnx2_rx_bd* l2_ring; } ;
struct TYPE_2__ {struct status_block_msix* bnx2; struct status_block* gen; } ;
struct cnic_local {int status_blk_num; scalar_t__* rx_cons_ptr; scalar_t__ rx_cons; int l2_rx_ring_size; int l2_single_buf_size; TYPE_1__ status_blk; struct cnic_uio_dev* udev; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct bnx2_rx_bd {int rx_bd_len; int rx_bd_flags; int rx_bd_haddr_hi; int rx_bd_haddr_lo; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int BNX2_HC_COALESCE_NOW ; 
 int BNX2_HC_COMMAND ; 
 int /*<<< orphan*/  BNX2_L2CTX_CTX_TYPE ; 
 int BNX2_L2CTX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE ; 
 int BNX2_L2CTX_CTX_TYPE_SIZE_L2 ; 
 int /*<<< orphan*/  BNX2_L2CTX_HOST_BDIDX ; 
 int FUNC0 (int) ; 
 int BNX2_L2CTX_L2_STATUSB_NUM_SHIFT ; 
 int /*<<< orphan*/  BNX2_L2CTX_NX_BDHADDR_HI ; 
 int /*<<< orphan*/  BNX2_L2CTX_NX_BDHADDR_LO ; 
 int BNX2_MAX_RX_DESC_CNT ; 
 int BNX2_PAGE_SIZE ; 
 int /*<<< orphan*/  BNX2_RXP_SCRATCH_RXP_FLOOD ; 
 int CNIC_DRV_STATE_USING_MSIX ; 
 int FUNC1 (struct cnic_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*,int,int) ; 
 int FUNC3 (int) ; 
 int RX_BD_FLAGS_END ; 
 int RX_BD_FLAGS_START ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cnic_dev*,int) ; 
 int FUNC7 (struct cnic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cnic_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_eth_dev *ethdev = cp->ethdev;
	struct cnic_uio_dev *udev = cp->udev;
	u32 cid_addr, sb_id, val, coal_reg, coal_val;
	int i;
	struct bnx2_rx_bd *rxbd;
	struct status_block *s_blk = cp->status_blk.gen;
	dma_addr_t ring_map = udev->l2_ring_map;

	sb_id = cp->status_blk_num;
	FUNC6(dev, 2);
	cp->rx_cons_ptr = &s_blk->status_rx_quick_consumer_index2;
	coal_reg = BNX2_HC_COMMAND;
	coal_val = FUNC1(dev, coal_reg);
	if (ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX) {
		struct status_block_msix *sblk = cp->status_blk.bnx2;

		cp->rx_cons_ptr = &sblk->status_rx_quick_consumer_index;
		coal_reg = BNX2_HC_COALESCE_NOW;
		coal_val = 1 << (11 + sb_id);
	}
	i = 0;
	while (!(*cp->rx_cons_ptr != 0) && i < 10) {
		FUNC2(dev, coal_reg, coal_val);
		FUNC9(10);
		i++;
		FUNC4();
	}
	cp->rx_cons = *cp->rx_cons_ptr;

	cid_addr = FUNC3(2);
	val = BNX2_L2CTX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE |
	      BNX2_L2CTX_CTX_TYPE_SIZE_L2 | (0x02 << 8);
	FUNC5(dev, cid_addr, BNX2_L2CTX_CTX_TYPE, val);

	if (sb_id == 0)
		val = 2 << BNX2_L2CTX_L2_STATUSB_NUM_SHIFT;
	else
		val = FUNC0(sb_id);
	FUNC5(dev, cid_addr, BNX2_L2CTX_HOST_BDIDX, val);

	rxbd = udev->l2_ring + BNX2_PAGE_SIZE;
	for (i = 0; i < BNX2_MAX_RX_DESC_CNT; i++, rxbd++) {
		dma_addr_t buf_map;
		int n = (i % cp->l2_rx_ring_size) + 1;

		buf_map = udev->l2_buf_map + (n * cp->l2_single_buf_size);
		rxbd->rx_bd_len = cp->l2_single_buf_size;
		rxbd->rx_bd_flags = RX_BD_FLAGS_START | RX_BD_FLAGS_END;
		rxbd->rx_bd_haddr_hi = (u64) buf_map >> 32;
		rxbd->rx_bd_haddr_lo = (u64) buf_map & 0xffffffff;
	}
	val = (u64) (ring_map + BNX2_PAGE_SIZE) >> 32;
	FUNC5(dev, cid_addr, BNX2_L2CTX_NX_BDHADDR_HI, val);
	rxbd->rx_bd_haddr_hi = val;

	val = (u64) (ring_map + BNX2_PAGE_SIZE) & 0xffffffff;
	FUNC5(dev, cid_addr, BNX2_L2CTX_NX_BDHADDR_LO, val);
	rxbd->rx_bd_haddr_lo = val;

	val = FUNC7(dev, BNX2_RXP_SCRATCH_RXP_FLOOD);
	FUNC8(dev, BNX2_RXP_SCRATCH_RXP_FLOOD, val | (1 << 2));
}