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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {scalar_t__ link_speed; int /*<<< orphan*/  state; int /*<<< orphan*/  last_rx_ptp_check; int /*<<< orphan*/  flags2; struct ixgbe_hw hw; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_FCCFG ; 
 scalar_t__ IXGBE_FCCFG_TFCE_802_3X ; 
 int /*<<< orphan*/  IXGBE_FCTRL ; 
 scalar_t__ IXGBE_FCTRL_RFCE ; 
 int /*<<< orphan*/  IXGBE_FLAG2_SEARCH_FOR_SFP ; 
 scalar_t__ IXGBE_LINK_SPEED_100_FULL ; 
 scalar_t__ IXGBE_LINK_SPEED_10GB_FULL ; 
 scalar_t__ IXGBE_LINK_SPEED_1GB_FULL ; 
 int /*<<< orphan*/  IXGBE_MFLCN ; 
 scalar_t__ IXGBE_MFLCN_RFCE ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RMCS ; 
 scalar_t__ IXGBE_RMCS_TFCE_802_3X ; 
 int /*<<< orphan*/  __IXGBE_PTP_RUNNING ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
#define  ixgbe_mac_82598EB 130 
#define  ixgbe_mac_82599EB 129 
#define  ixgbe_mac_X540 128 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ixgbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct ixgbe_hw *hw = &adapter->hw;
	u32 link_speed = adapter->link_speed;
	bool flow_rx, flow_tx;

	/* only continue if link was previously down */
	if (FUNC6(netdev))
		return;

	adapter->flags2 &= ~IXGBE_FLAG2_SEARCH_FOR_SFP;

	switch (hw->mac.type) {
	case ixgbe_mac_82598EB: {
		u32 frctl = FUNC0(hw, IXGBE_FCTRL);
		u32 rmcs = FUNC0(hw, IXGBE_RMCS);
		flow_rx = !!(frctl & IXGBE_FCTRL_RFCE);
		flow_tx = !!(rmcs & IXGBE_RMCS_TFCE_802_3X);
	}
		break;
	case ixgbe_mac_X540:
	case ixgbe_mac_82599EB: {
		u32 mflcn = FUNC0(hw, IXGBE_MFLCN);
		u32 fccfg = FUNC0(hw, IXGBE_FCCFG);
		flow_rx = !!(mflcn & IXGBE_MFLCN_RFCE);
		flow_tx = !!(fccfg & IXGBE_FCCFG_TFCE_802_3X);
	}
		break;
	default:
		flow_tx = false;
		flow_rx = false;
		break;
	}

#ifdef CONFIG_IXGBE_PTP
	adapter->last_rx_ptp_check = jiffies;

	if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
		ixgbe_ptp_start_cyclecounter(adapter);
#endif

	FUNC1(drv, "NIC Link is Up %s, Flow Control: %s\n",
	       (link_speed == IXGBE_LINK_SPEED_10GB_FULL ?
	       "10 Gbps" :
	       (link_speed == IXGBE_LINK_SPEED_1GB_FULL ?
	       "1 Gbps" :
	       (link_speed == IXGBE_LINK_SPEED_100_FULL ?
	       "100 Mbps" :
	       "unknown speed"))),
	       ((flow_rx && flow_tx) ? "RX/TX" :
	       (flow_rx ? "RX" :
	       (flow_tx ? "TX" : "None"))));

	FUNC7(netdev);
	FUNC2(adapter);

	/* update the default user priority for VFs */
	FUNC5(adapter);

	/* ping all the active vfs to let them know link has changed */
	FUNC3(adapter);
}