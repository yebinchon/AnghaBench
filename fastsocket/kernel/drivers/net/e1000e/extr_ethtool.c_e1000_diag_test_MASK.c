#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {void* autoneg; void* forced_speed_duplex; } ;
struct TYPE_4__ {int autoneg_wait_to_complete; int /*<<< orphan*/  autoneg_advertised; } ;
struct TYPE_6__ {TYPE_2__ mac; TYPE_1__ phy; } ;
struct e1000_adapter {int flags; int /*<<< orphan*/  state; TYPE_3__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 int FLAG_HAS_AMT ; 
 int /*<<< orphan*/  __E1000_TESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct e1000_adapter* FUNC14 (struct net_device*) ; 
 int FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct net_device *netdev,
			    struct ethtool_test *eth_test, u64 *data)
{
	struct e1000_adapter *adapter = FUNC14(netdev);
	u16 autoneg_advertised;
	u8 forced_speed_duplex;
	u8 autoneg;
	bool if_running = FUNC15(netdev);

	FUNC16(__E1000_TESTING, &adapter->state);

	if (!if_running) {
		/* Get control of and reset hardware */
		if (adapter->flags & FLAG_HAS_AMT)
			FUNC8(adapter);

		FUNC9(adapter);

		adapter->hw.phy.autoneg_wait_to_complete = 1;
		FUNC11(adapter);
		adapter->hw.phy.autoneg_wait_to_complete = 0;
	}

	if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
		/* Offline tests */

		/* save speed, duplex, autoneg settings */
		autoneg_advertised = adapter->hw.phy.autoneg_advertised;
		forced_speed_duplex = adapter->hw.mac.forced_speed_duplex;
		autoneg = adapter->hw.mac.autoneg;

		FUNC12("offline testing starting\n");

		if (if_running)
			/* indicate we're in test mode */
			FUNC1(netdev);

		if (FUNC7(adapter, &data[0]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC11(adapter);
		if (FUNC3(adapter, &data[1]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC11(adapter);
		if (FUNC4(adapter, &data[2]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC11(adapter);
		if (FUNC6(adapter, &data[3]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* force this routine to wait until autoneg complete/timeout */
		adapter->hw.phy.autoneg_wait_to_complete = 1;
		FUNC11(adapter);
		adapter->hw.phy.autoneg_wait_to_complete = 0;

		if (FUNC5(adapter, &data[4]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		/* restore speed, duplex, autoneg settings */
		adapter->hw.phy.autoneg_advertised = autoneg_advertised;
		adapter->hw.mac.forced_speed_duplex = forced_speed_duplex;
		adapter->hw.mac.autoneg = autoneg;
		FUNC11(adapter);

		FUNC0(__E1000_TESTING, &adapter->state);
		if (if_running)
			FUNC2(netdev);
	} else {
		/* Online tests */

		FUNC12("online testing starting\n");

		/* register, eeprom, intr and loopback tests not run online */
		data[0] = 0;
		data[1] = 0;
		data[2] = 0;
		data[3] = 0;

		if (FUNC5(adapter, &data[4]))
			eth_test->flags |= ETH_TEST_FL_FAILED;

		FUNC0(__E1000_TESTING, &adapter->state);
	}

	if (!if_running) {
		FUNC11(adapter);

		if (adapter->flags & FLAG_HAS_AMT)
			FUNC10(adapter);
	}

	FUNC13(4 * 1000);
}