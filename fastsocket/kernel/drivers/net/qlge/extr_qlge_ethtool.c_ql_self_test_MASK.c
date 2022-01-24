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
struct ql_adapter {int /*<<< orphan*/  ndev; int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;
struct ethtool_test {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_TEST_FL_FAILED ; 
 int /*<<< orphan*/  ETH_TEST_FL_OFFLINE ; 
 int QLGE_TEST_LEN ; 
 int /*<<< orphan*/  QL_SELFTEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ql_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct ql_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *ndev,
				struct ethtool_test *eth_test, u64 *data)
{
	struct ql_adapter *qdev = FUNC3(ndev);

	FUNC1(data, 0, sizeof(u64) * QLGE_TEST_LEN);

	if (FUNC5(ndev)) {
		FUNC7(QL_SELFTEST, &qdev->flags);
		if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
			/* Offline tests */
			if (FUNC6(qdev, &data[0]))
				eth_test->flags |= ETH_TEST_FL_FAILED;

		} else {
			/* Online tests */
			data[0] = 0;
		}
		FUNC0(QL_SELFTEST, &qdev->flags);
		/* Give link time to come up after
		 * port configuration changes.
		 */
		FUNC2(4 * 1000);
	} else {
		FUNC4(qdev, drv, qdev->ndev,
			  "is down, Loopback test will fail.\n");
		eth_test->flags |= ETH_TEST_FL_FAILED;
	}
}