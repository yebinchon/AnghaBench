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
struct TYPE_2__ {scalar_t__ fc_autoneg; int /*<<< orphan*/  fc; } ;
struct pch_gbe_hw {TYPE_1__ mac; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  PCH_GBE_FC_FULL ; 
 int /*<<< orphan*/  PCH_GBE_FC_NONE ; 
 int /*<<< orphan*/  PCH_GBE_FC_RX_PAUSE ; 
 int /*<<< orphan*/  PCH_GBE_FC_TX_PAUSE ; 
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_adapter*) ; 
 int FUNC3 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_adapter*) ; 
 int FUNC5 (struct pch_gbe_adapter*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
				       struct ethtool_pauseparam *pause)
{
	struct pch_gbe_adapter *adapter = FUNC0(netdev);
	struct pch_gbe_hw *hw = &adapter->hw;
	int ret = 0;

	hw->mac.fc_autoneg = pause->autoneg;
	if ((pause->rx_pause) && (pause->tx_pause))
		hw->mac.fc = PCH_GBE_FC_FULL;
	else if ((pause->rx_pause) && (!pause->tx_pause))
		hw->mac.fc = PCH_GBE_FC_RX_PAUSE;
	else if ((!pause->rx_pause) && (pause->tx_pause))
		hw->mac.fc = PCH_GBE_FC_TX_PAUSE;
	else if ((!pause->rx_pause) && (!pause->tx_pause))
		hw->mac.fc = PCH_GBE_FC_NONE;

	if (hw->mac.fc_autoneg == AUTONEG_ENABLE) {
		if ((FUNC1(adapter->netdev))) {
			FUNC2(adapter);
			ret = FUNC5(adapter);
		} else {
			FUNC4(adapter);
		}
	} else {
		ret = FUNC3(hw);
	}
	return ret;
}