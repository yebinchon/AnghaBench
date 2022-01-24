#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_vfs; TYPE_2__* pdev; int /*<<< orphan*/  state; TYPE_1__* vfinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int pf_set_mac; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ixgbe_adapter*,int,int /*<<< orphan*/ *) ; 
 struct ixgbe_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct net_device *netdev, int vf, u8 *mac)
{
	struct ixgbe_adapter *adapter = FUNC4(netdev);
	if (!FUNC2(mac) || (vf >= adapter->num_vfs))
		return -EINVAL;
	adapter->vfinfo[vf].pf_set_mac = true;
	FUNC0(&adapter->pdev->dev, "setting MAC %pM on VF %d\n", mac, vf);
	FUNC0(&adapter->pdev->dev, "Reload the VF driver to make this"
				      " change effective.");
	if (FUNC5(__IXGBE_DOWN, &adapter->state)) {
		FUNC1(&adapter->pdev->dev, "The VF MAC address has been set,"
			 " but the PF device is not up.\n");
		FUNC1(&adapter->pdev->dev, "Bring the PF device up before"
			 " attempting to use the VF device.\n");
	}
	return FUNC3(adapter, vf, mac);
}