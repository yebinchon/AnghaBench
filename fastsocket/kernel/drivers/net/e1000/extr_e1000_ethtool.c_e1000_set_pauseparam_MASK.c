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
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct e1000_hw {scalar_t__ media_type; int /*<<< orphan*/  fc; int /*<<< orphan*/  original_fc; } ;
struct e1000_adapter {scalar_t__ fc_autoneg; int /*<<< orphan*/  flags; int /*<<< orphan*/  netdev; struct e1000_hw hw; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  E1000_FC_FULL ; 
 int /*<<< orphan*/  E1000_FC_NONE ; 
 int /*<<< orphan*/  E1000_FC_RX_PAUSE ; 
 int /*<<< orphan*/  E1000_FC_TX_PAUSE ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int FUNC2 (struct e1000_hw*) ; 
 scalar_t__ e1000_media_type_fiber ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct e1000_adapter* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev,
				struct ethtool_pauseparam *pause)
{
	struct e1000_adapter *adapter = FUNC7(netdev);
	struct e1000_hw *hw = &adapter->hw;
	int retval = 0;

	adapter->fc_autoneg = pause->autoneg;

	while (FUNC9(__E1000_RESETTING, &adapter->flags))
		FUNC6(1);

	if (pause->rx_pause && pause->tx_pause)
		hw->fc = E1000_FC_FULL;
	else if (pause->rx_pause && !pause->tx_pause)
		hw->fc = E1000_FC_RX_PAUSE;
	else if (!pause->rx_pause && pause->tx_pause)
		hw->fc = E1000_FC_TX_PAUSE;
	else if (!pause->rx_pause && !pause->tx_pause)
		hw->fc = E1000_FC_NONE;

	hw->original_fc = hw->fc;

	if (adapter->fc_autoneg == AUTONEG_ENABLE) {
		if (FUNC8(adapter->netdev)) {
			FUNC1(adapter);
			FUNC5(adapter);
		} else
			FUNC3(adapter);
	} else
		retval = ((hw->media_type == e1000_media_type_fiber) ?
			  FUNC4(hw) : FUNC2(hw));

	FUNC0(__E1000_RESETTING, &adapter->flags);
	return retval;
}