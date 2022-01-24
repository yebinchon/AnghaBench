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
struct TYPE_3__ {int /*<<< orphan*/  (* enable_rx_buff ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* disable_rx_buff ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; int /*<<< orphan*/  fdir_pballoc; struct ixgbe_hw hw; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ; 
 int IXGBE_FLAG_FDIR_PERFECT_CAPABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
#define  ixgbe_mac_82599EB 129 
#define  ixgbe_mac_X540 128 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_hw*) ; 

__attribute__((used)) static void FUNC13(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;

	FUNC2(adapter);
#ifdef CONFIG_IXGBE_DCB
	ixgbe_configure_dcb(adapter);
#endif
	/*
	 * We must restore virtualization before VLANs or else
	 * the VLVF registers will not be populated
	 */
	FUNC5(adapter);

	FUNC10(adapter->netdev);
	FUNC9(adapter);

	switch (hw->mac.type) {
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
		hw->mac.ops.disable_rx_buff(hw);
		break;
	default:
		break;
	}

	if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
		FUNC8(&adapter->hw,
						adapter->fdir_pballoc);
	} else if (adapter->flags & IXGBE_FLAG_FDIR_PERFECT_CAPABLE) {
		FUNC7(&adapter->hw,
					      adapter->fdir_pballoc);
		FUNC6(adapter);
	}

	switch (hw->mac.type) {
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
		hw->mac.ops.enable_rx_buff(hw);
		break;
	default:
		break;
	}

#ifdef IXGBE_FCOE
	/* configure FCoE L2 filters, redirection table, and Rx control */
	ixgbe_configure_fcoe(adapter);

#endif /* IXGBE_FCOE */
	FUNC4(adapter);
	FUNC3(adapter);
}