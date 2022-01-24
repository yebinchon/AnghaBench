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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {struct e1000_hw hw; } ;
struct ethtool_cmd {int port; int duplex; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  transceiver; int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISED_1000baseT_Full ; 
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int DUPLEX_FULL ; 
 int DUPLEX_HALF ; 
 int E1000_STATUS_FD ; 
 int E1000_STATUS_LU ; 
 int E1000_STATUS_SPEED_100 ; 
 int E1000_STATUS_SPEED_1000 ; 
 int SPEED_10 ; 
 int SPEED_100 ; 
 int SPEED_1000 ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  SUPPORTED_1000baseT_Full ; 
 int /*<<< orphan*/  XCVR_DUMMY1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_cmd*,int) ; 
 struct igbvf_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
                              struct ethtool_cmd *ecmd)
{
	struct igbvf_adapter *adapter = FUNC2(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 status;

	ecmd->supported   = SUPPORTED_1000baseT_Full;

	ecmd->advertising = ADVERTISED_1000baseT_Full;

	ecmd->port = -1;
	ecmd->transceiver = XCVR_DUMMY1;

	status = FUNC0(STATUS);
	if (status & E1000_STATUS_LU) {
		if (status & E1000_STATUS_SPEED_1000)
			FUNC1(ecmd, SPEED_1000);
		else if (status & E1000_STATUS_SPEED_100)
			FUNC1(ecmd, SPEED_100);
		else
			FUNC1(ecmd, SPEED_10);

		if (status & E1000_STATUS_FD)
			ecmd->duplex = DUPLEX_FULL;
		else
			ecmd->duplex = DUPLEX_HALF;
	} else {
		FUNC1(ecmd, -1);
		ecmd->duplex = -1;
	}

	ecmd->autoneg = AUTONEG_DISABLE;

	return 0;
}