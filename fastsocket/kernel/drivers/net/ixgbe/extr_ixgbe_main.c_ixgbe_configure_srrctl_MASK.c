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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ixgbe_ring {int /*<<< orphan*/  reg_idx; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__* ring_feature; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int IXGBE_RX_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT ; 
 int IXGBE_SRRCTL_BSIZEPKT_SHIFT ; 
 int IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 size_t RING_F_RSS ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int FUNC2 (struct ixgbe_ring*) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_adapter *adapter,
				   struct ixgbe_ring *rx_ring)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 srrctl;
	u8 reg_idx = rx_ring->reg_idx;

	if (hw->mac.type == ixgbe_mac_82598EB) {
		u16 mask = adapter->ring_feature[RING_F_RSS].mask;

		/*
		 * if VMDq is not active we must program one srrctl register
		 * per RSS queue since we have enabled RDRXCTL.MVMEN
		 */
		reg_idx &= mask;
	}

	/* configure header buffer length, needed for RSC */
	srrctl = IXGBE_RX_HDR_SIZE << IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT;

	/* configure the packet buffer length */
	srrctl |= FUNC2(rx_ring) >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;

	/* configure descriptor type */
	srrctl |= IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF;

	FUNC1(hw, FUNC0(reg_idx), srrctl);
}