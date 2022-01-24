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
struct ethtool_wolinfo {int wolopts; } ;
struct e1000_hw {int device_id; } ;
struct e1000_adapter {int /*<<< orphan*/  wol; TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3 128 
 int /*<<< orphan*/  E1000_WUFC_BC ; 
 int /*<<< orphan*/  E1000_WUFC_EX ; 
 int /*<<< orphan*/  E1000_WUFC_MAG ; 
 int /*<<< orphan*/  E1000_WUFC_MC ; 
 int EOPNOTSUPP ; 
 int WAKE_ARP ; 
 int WAKE_BCAST ; 
 int WAKE_MAGIC ; 
 int WAKE_MAGICSECURE ; 
 int WAKE_MCAST ; 
 int WAKE_PHY ; 
 int WAKE_UCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 scalar_t__ FUNC2 (struct e1000_adapter*,struct ethtool_wolinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct e1000_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
	struct e1000_adapter *adapter = FUNC4(netdev);
	struct e1000_hw *hw = &adapter->hw;

	if (wol->wolopts & (WAKE_PHY | WAKE_ARP | WAKE_MAGICSECURE))
		return -EOPNOTSUPP;

	if (FUNC2(adapter, wol) ||
	    !FUNC0(&adapter->pdev->dev))
		return wol->wolopts ? -EOPNOTSUPP : 0;

	switch (hw->device_id) {
	case E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3:
		if (wol->wolopts & WAKE_UCAST) {
			FUNC3(drv, "Interface does not support directed "
			      "(unicast) frame wake-up packets\n");
			return -EOPNOTSUPP;
		}
		break;
	default:
		break;
	}

	/* these settings will always override what we currently have */
	adapter->wol = 0;

	if (wol->wolopts & WAKE_UCAST)
		adapter->wol |= E1000_WUFC_EX;
	if (wol->wolopts & WAKE_MCAST)
		adapter->wol |= E1000_WUFC_MC;
	if (wol->wolopts & WAKE_BCAST)
		adapter->wol |= E1000_WUFC_BC;
	if (wol->wolopts & WAKE_MAGIC)
		adapter->wol |= E1000_WUFC_MAG;

	FUNC1(&adapter->pdev->dev, adapter->wol);

	return 0;
}