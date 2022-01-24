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
typedef  scalar_t__ u64 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;

/* Variables and functions */
 int ETH_TEST_FL_FAILED ; 
 int ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  QLCNIC_ILB_MODE ; 
 int QLCNIC_TEST_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void
FUNC6(struct net_device *dev, struct ethtool_test *eth_test,
		     u64 *data)
{
	FUNC0(data, 0, sizeof(u64) * QLCNIC_TEST_LEN);

	data[0] = FUNC4(dev);
	if (data[0])
		eth_test->flags |= ETH_TEST_FL_FAILED;

	data[1] = (u64) FUNC5(dev);
	if (data[1])
		eth_test->flags |= ETH_TEST_FL_FAILED;

	if (eth_test->flags & ETH_TEST_FL_OFFLINE) {
		data[2] = FUNC2(dev);
		if (data[2])
			eth_test->flags |= ETH_TEST_FL_FAILED;

		data[3] = FUNC3(dev, QLCNIC_ILB_MODE);
		if (data[3])
			eth_test->flags |= ETH_TEST_FL_FAILED;

		data[4] = FUNC1(dev);
		if (data[4])
			eth_test->flags |= ETH_TEST_FL_FAILED;
	}
}