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
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct ixgbe_ring {int dma; int count; int /*<<< orphan*/  state; scalar_t__ atr_sample_rate; scalar_t__ atr_count; TYPE_1__* q_vector; scalar_t__ tail; int /*<<< orphan*/  reg_idx; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ mac; scalar_t__ hw_addr; } ;
struct ixgbe_adapter {int flags; scalar_t__ atr_sample_rate; struct ixgbe_hw hw; } ;
struct TYPE_3__ {int itr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ; 
 scalar_t__ IXGBE_LINKS ; 
 int IXGBE_LINKS_UP ; 
 int FUNC1 (struct ixgbe_hw*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int IXGBE_TXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  __IXGBE_HANG_CHECK_ARMED ; 
 int /*<<< orphan*/  __IXGBE_TX_FDIR_INIT_DONE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

void FUNC14(struct ixgbe_adapter *adapter,
			     struct ixgbe_ring *ring)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u64 tdba = ring->dma;
	int wait_loop = 10;
	u32 txdctl = IXGBE_TXDCTL_ENABLE;
	u8 reg_idx = ring->reg_idx;

	/* disable queue to avoid issues while updating state */
	FUNC9(hw, FUNC7(reg_idx), 0);
	FUNC8(hw);

	FUNC9(hw, FUNC3(reg_idx),
			(tdba & FUNC0(32)));
	FUNC9(hw, FUNC2(reg_idx), (tdba >> 32));
	FUNC9(hw, FUNC5(reg_idx),
			ring->count * sizeof(union ixgbe_adv_tx_desc));
	FUNC9(hw, FUNC4(reg_idx), 0);
	FUNC9(hw, FUNC6(reg_idx), 0);
	ring->tail = hw->hw_addr + FUNC6(reg_idx);

	/*
	 * set WTHRESH to encourage burst writeback, it should not be set
	 * higher than 1 when ITR is 0 as it could cause false TX hangs
	 *
	 * In order to avoid issues WTHRESH + PTHRESH should always be equal
	 * to or less than the number of on chip descriptors, which is
	 * currently 40.
	 */
	if (!ring->q_vector || (ring->q_vector->itr < 8))
		txdctl |= (1 << 16);	/* WTHRESH = 1 */
	else
		txdctl |= (8 << 16);	/* WTHRESH = 8 */

	/*
	 * Setting PTHRESH to 32 both improves performance
	 * and avoids a TX hang with DFP enabled
	 */
	txdctl |= (1 << 8) |	/* HTHRESH = 1 */
		   32;		/* PTHRESH = 32 */

	/* reinitialize flowdirector state */
	if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
		ring->atr_sample_rate = adapter->atr_sample_rate;
		ring->atr_count = 0;
		FUNC12(__IXGBE_TX_FDIR_INIT_DONE, &ring->state);
	} else {
		ring->atr_sample_rate = 0;
	}

	FUNC10(__IXGBE_HANG_CHECK_ARMED, &ring->state);

	/* enable queue */
	FUNC9(hw, FUNC7(reg_idx), txdctl);

	/* TXDCTL.EN will return 0 on 82598 if link is down, so skip it */
	if (hw->mac.type == ixgbe_mac_82598EB &&
	    !(FUNC1(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
		return;

	/* poll to verify queue is enabled */
	do {
		FUNC13(1000, 2000);
		txdctl = FUNC1(hw, FUNC7(reg_idx));
	} while (--wait_loop && !(txdctl & IXGBE_TXDCTL_ENABLE));
	if (!wait_loop)
		FUNC11(drv, "Could not enable Tx Queue %d\n", reg_idx);
}