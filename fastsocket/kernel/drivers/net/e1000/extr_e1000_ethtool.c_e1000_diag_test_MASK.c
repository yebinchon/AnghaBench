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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;
struct e1000_hw {void* autoneg; void* forced_speed_duplex; int /*<<< orphan*/  autoneg_advertised; } ;
struct e1000_adapter {int /*<<< orphan*/  flags; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  __E1000_TESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_adapter*) ; 
 scalar_t__ FUNC8 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct e1000_adapter* FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct net_device *netdev,
			    struct ethtool_test *eth_test, u64 *data)
{
	struct e1000_adapter *adapter = FUNC12(netdev);
	struct e1000_hw *hw = &adapter->hw;
	bool if_running = FUNC13(netdev);

	FUNC14(__E1000_TESTING, &adapter->flags);
	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
		/* Offline tests */

		/* save speed, duplex, autoneg settings */
		u16 autoneg_advertised = hw->autoneg_advertised;
		u8 forced_speed_duplex = hw->forced_speed_duplex;
		u8 autoneg = hw->autoneg;

		FUNC10(hw, "offline testing starting\n");

		/* Link test performed before hardware reset so autoneg doesn't
		 * interfere with test result */
		if (FUNC5(adapter, &data[4]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		if (if_running)
			/* indicate we're in test mode */
			FUNC1(netdev);
		else
			FUNC9(adapter);

		if (FUNC8(adapter, &data[0]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC9(adapter);
		if (FUNC3(adapter, &data[1]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC9(adapter);
		if (FUNC4(adapter, &data[2]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC9(adapter);
		/* make sure the phy is powered up */
		FUNC7(adapter);
		if (FUNC6(adapter, &data[3]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* restore speed, duplex, autoneg settings */
		hw->autoneg_advertised = autoneg_advertised;
		hw->forced_speed_duplex = forced_speed_duplex;
		hw->autoneg = autoneg;

		FUNC9(adapter);
		FUNC0(__E1000_TESTING, &adapter->flags);
		if (if_running)
			FUNC2(netdev);
	} else {
		FUNC10(hw, "online testing starting\n");
		/* Online tests */
		if (FUNC5(adapter, &data[4]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* Online tests aren't run; pass by default */
		data[0] = 0;
		data[1] = 0;
		data[2] = 0;
		data[3] = 0;

		FUNC0(__E1000_TESTING, &adapter->flags);
	}
	FUNC11(4 * 1000);
}