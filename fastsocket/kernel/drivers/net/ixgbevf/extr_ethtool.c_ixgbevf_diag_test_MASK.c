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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  hw; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  __IXGBEVF_TESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (struct ixgbevf_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ixgbevf_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct ixgbevf_adapter* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct net_device *netdev,
			      struct ethtool_test *eth_test, u64 *data)
{
	struct ixgbevf_adapter *adapter = FUNC8(netdev);
	bool if_running = FUNC9(netdev);

	FUNC10(__IXGBEVF_TESTING, &adapter->state);
	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
		/* Offline tests */

		FUNC3(&adapter->hw, "offline testing starting\n");

		/* Link test performed before hardware reset so autoneg doesn't
		 * interfere with test result */
		if (FUNC4(adapter, &data[1]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		if (if_running)
			/* indicate we're in test mode */
			FUNC1(netdev);
		else
			FUNC6(adapter);

		FUNC3(&adapter->hw, "register testing starting\n");
		if (FUNC5(adapter, &data[0]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC6(adapter);

		FUNC0(__IXGBEVF_TESTING, &adapter->state);
		if (if_running)
			FUNC2(netdev);
	} else {
		FUNC3(&adapter->hw, "online testing starting\n");
		/* Online tests */
		if (FUNC4(adapter, &data[1]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* Online tests aren't run; pass by default */
		data[0] = 0;

		FUNC0(__IXGBEVF_TESTING, &adapter->state);
	}
	FUNC7(4 * 1000);
}