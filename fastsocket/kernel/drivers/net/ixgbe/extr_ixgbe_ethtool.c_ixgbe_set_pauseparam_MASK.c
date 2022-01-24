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
struct net_device {int dummy; } ;
struct ixgbe_fc_info {int disable_fc_autoneg; int /*<<< orphan*/  requested_mode; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {struct ixgbe_fc_info fc; TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; struct ixgbe_hw hw; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int EINVAL ; 
 int IXGBE_FLAG_DCB_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  ixgbe_fc_full ; 
 int /*<<< orphan*/  ixgbe_fc_none ; 
 int /*<<< orphan*/  ixgbe_fc_rx_pause ; 
 int /*<<< orphan*/  ixgbe_fc_tx_pause ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 scalar_t__ FUNC3 (struct ixgbe_fc_info*,struct ixgbe_fc_info*,int) ; 
 struct ixgbe_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
                                struct ethtool_pauseparam *pause)
{
	struct ixgbe_adapter *adapter = FUNC4(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	struct ixgbe_fc_info fc = hw->fc;

	/* 82598 does no support link flow control with DCB enabled */
	if ((hw->mac.type == ixgbe_mac_82598EB) &&
	    (adapter->flags & IXGBE_FLAG_DCB_ENABLED))
		return -EINVAL;

	/* some devices do not support autoneg of link flow control */
	if ((pause->autoneg == AUTONEG_ENABLE) &&
	    !FUNC0(hw))
		return -EINVAL;

	fc.disable_fc_autoneg = (pause->autoneg != AUTONEG_ENABLE);

	if ((pause->rx_pause && pause->tx_pause) || pause->autoneg)
		fc.requested_mode = ixgbe_fc_full;
	else if (pause->rx_pause && !pause->tx_pause)
		fc.requested_mode = ixgbe_fc_rx_pause;
	else if (!pause->rx_pause && pause->tx_pause)
		fc.requested_mode = ixgbe_fc_tx_pause;
	else
		fc.requested_mode = ixgbe_fc_none;

	/* if the thing changed then we'll update and use new autoneg */
	if (FUNC3(&fc, &hw->fc, sizeof(struct ixgbe_fc_info))) {
		hw->fc = fc;
		if (FUNC5(netdev))
			FUNC1(adapter);
		else
			FUNC2(adapter);
	}

	return 0;
}