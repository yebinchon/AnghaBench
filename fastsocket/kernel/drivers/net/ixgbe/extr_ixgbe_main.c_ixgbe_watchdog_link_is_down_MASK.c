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
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int link_up; int /*<<< orphan*/  state; int /*<<< orphan*/  flags2; scalar_t__ link_speed; struct ixgbe_hw hw; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_FLAG2_SEARCH_FOR_SFP ; 
 int /*<<< orphan*/  __IXGBE_PTP_RUNNING ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ixgbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct ixgbe_hw *hw = &adapter->hw;

	adapter->link_up = false;
	adapter->link_speed = 0;

	/* only continue if link was up previously */
	if (!FUNC5(netdev))
		return;

	/* poll for SFP+ cable when link is down */
	if (FUNC1(hw) && hw->mac.type == ixgbe_mac_82598EB)
		adapter->flags2 |= IXGBE_FLAG2_SEARCH_FOR_SFP;

#ifdef CONFIG_IXGBE_PTP
	if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
		ixgbe_ptp_start_cyclecounter(adapter);
#endif

	FUNC0(drv, "NIC Link is Down\n");
	FUNC4(netdev);

	/* ping all the active vfs to let them know link has changed */
	FUNC2(adapter);
}