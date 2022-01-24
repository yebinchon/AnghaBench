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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_device {size_t mac_index; struct nes_adapter* nesadapter; } ;
struct nes_adapter {scalar_t__* phy_type; int /*<<< orphan*/  phy_lock; int /*<<< orphan*/ * phy_index; scalar_t__ OneG_Mode; } ;
struct ethtool_cmd {scalar_t__ autoneg; } ;

/* Variables and functions */
 scalar_t__ NES_PHY_TYPE_PUMA_1G ; 
 int /*<<< orphan*/  FUNC0 (struct nes_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct nes_vnic* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, struct ethtool_cmd *et_cmd)
{
	struct nes_vnic *nesvnic = FUNC2(netdev);
	struct nes_device *nesdev = nesvnic->nesdev;
	struct nes_adapter *nesadapter = nesdev->nesadapter;

	if ((nesadapter->OneG_Mode) &&
	    (nesadapter->phy_type[nesdev->mac_index] != NES_PHY_TYPE_PUMA_1G)) {
		unsigned long flags;
		u16 phy_data;
		u8 phy_index = nesadapter->phy_index[nesdev->mac_index];

		FUNC3(&nesadapter->phy_lock, flags);
		FUNC0(nesdev, 0, phy_index, &phy_data);
		if (et_cmd->autoneg) {
			/* Turn on Full duplex, Autoneg, and restart autonegotiation */
			phy_data |= 0x1300;
		} else {
			/* Turn off autoneg */
			phy_data &= ~0x1000;
		}
		FUNC1(nesdev, 0, phy_index, phy_data);
		FUNC4(&nesadapter->phy_lock, flags);
	}

	return 0;
}