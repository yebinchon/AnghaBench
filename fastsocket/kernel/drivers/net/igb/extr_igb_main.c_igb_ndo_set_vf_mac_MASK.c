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
struct igb_adapter {int vfs_allocated_count; TYPE_2__* pdev; int /*<<< orphan*/  state; TYPE_1__* vf_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IGB_VF_FLAG_PF_SET_MAC ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct igb_adapter*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct igb_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, int vf, u8 *mac)
{
	struct igb_adapter *adapter = FUNC4(netdev);
	if (!FUNC3(mac) || (vf >= adapter->vfs_allocated_count))
		return -EINVAL;
	adapter->vf_data[vf].flags |= IGB_VF_FLAG_PF_SET_MAC;
	FUNC0(&adapter->pdev->dev, "setting MAC %pM on VF %d\n", mac, vf);
	FUNC0(&adapter->pdev->dev,
		 "Reload the VF driver to make this change effective.");
	if (FUNC5(__IGB_DOWN, &adapter->state)) {
		FUNC1(&adapter->pdev->dev,
			 "The VF MAC address has been set, but the PF device is not up.\n");
		FUNC1(&adapter->pdev->dev,
			 "Bring the PF device up before attempting to use the VF device.\n");
	}
	return FUNC2(adapter, vf, mac);
}