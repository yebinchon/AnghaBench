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
typedef  int u64 ;
struct nic {int /*<<< orphan*/  mii; } ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct ethtool_cmd {int dummy; } ;

/* Variables and functions */
 int E100_TEST_LEN ; 
 int ETH_TEST_FL_FAILED ; 
 int ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct nic*) ; 
 int FUNC1 (struct nic*) ; 
 int FUNC2 (struct nic*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct nic*) ; 
 int /*<<< orphan*/  lb_mac ; 
 int /*<<< orphan*/  lb_phy ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct nic* FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 

__attribute__((used)) static void FUNC12(struct net_device *netdev,
	struct ethtool_test *test, u64 *data)
{
	struct ethtool_cmd cmd;
	struct nic *nic = FUNC10(netdev);
	int i, err;

	FUNC5(data, 0, E100_TEST_LEN * sizeof(u64));
	data[0] = !FUNC8(&nic->mii);
	data[1] = FUNC1(nic);
	if (test->flags & ETH_TEST_FL_OFFLINE) {

		/* save speed, duplex & autoneg settings */
		err = FUNC6(&nic->mii, &cmd);

		if (FUNC11(netdev))
			FUNC0(nic);
		data[2] = FUNC3(nic);
		data[3] = FUNC2(nic, lb_mac);
		data[4] = FUNC2(nic, lb_phy);

		/* restore speed, duplex & autoneg settings */
		err = FUNC7(&nic->mii, &cmd);

		if (FUNC11(netdev))
			FUNC4(nic);
	}
	for (i = 0; i < E100_TEST_LEN; i++)
		test->flags |= data[i] ? ETH_TEST_FL_FAILED : 0;

	FUNC9(4 * 1000);
}