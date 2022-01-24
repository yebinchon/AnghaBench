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
struct igbvf_adapter {int /*<<< orphan*/  state; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  __IGBVF_TESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct igbvf_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct igbvf_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
                            struct ethtool_test *eth_test, u64 *data)
{
	struct igbvf_adapter *adapter = FUNC3(netdev);

	FUNC4(__IGBVF_TESTING, &adapter->state);

	/*
	 * Link test performed before hardware reset so autoneg doesn't
	 * interfere with test result
	 */
	if (FUNC1(adapter, &data[0]))
		eth_test->flags |= ETH_TEST_FL_FAILED;

	FUNC0(__IGBVF_TESTING, &adapter->state);
	FUNC2(4 * 1000);
}