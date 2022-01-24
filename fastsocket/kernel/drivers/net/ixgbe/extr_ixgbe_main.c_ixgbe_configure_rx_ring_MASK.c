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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct ixgbe_ring {int dma; int count; scalar_t__ tail; int /*<<< orphan*/  reg_idx; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; scalar_t__ hw_addr; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ixgbe_hw*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  FUNC14 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 

void FUNC15(struct ixgbe_adapter *adapter,
			     struct ixgbe_ring *ring)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u64 rdba = ring->dma;
	u32 rxdctl;
	u8 reg_idx = ring->reg_idx;

	/* disable queue to avoid issues while updating state */
	rxdctl = FUNC6(hw, FUNC7(reg_idx));
	FUNC13(adapter, ring);

	FUNC8(hw, FUNC2(reg_idx), (rdba & FUNC0(32)));
	FUNC8(hw, FUNC1(reg_idx), (rdba >> 32));
	FUNC8(hw, FUNC4(reg_idx),
			ring->count * sizeof(union ixgbe_adv_rx_desc));
	FUNC8(hw, FUNC3(reg_idx), 0);
	FUNC8(hw, FUNC5(reg_idx), 0);
	ring->tail = hw->hw_addr + FUNC5(reg_idx);

	FUNC11(adapter, ring);
	FUNC10(adapter, ring);

	if (hw->mac.type == ixgbe_mac_82598EB) {
		/*
		 * enable cache line friendly hardware writes:
		 * PTHRESH=32 descriptors (half the internal cache),
		 * this also removes ugly rx_no_buffer_count increment
		 * HTHRESH=4 descriptors (to minimize latency on fetch)
		 * WTHRESH=8 burst writeback up to two cache lines
		 */
		rxdctl &= ~0x3FFFFF;
		rxdctl |=  0x080420;
	}

	/* enable receive descriptor ring */
	rxdctl |= IXGBE_RXDCTL_ENABLE;
	FUNC8(hw, FUNC7(reg_idx), rxdctl);

	FUNC14(adapter, ring);
	FUNC9(ring, FUNC12(ring));
}