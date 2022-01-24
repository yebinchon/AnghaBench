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
typedef  int u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; TYPE_2__* vf_data; TYPE_1__* pdev; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int pf_vlan; int pf_qos; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int VLAN_PRIO_SHIFT ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*,int,int) ; 
 int FUNC4 (struct igb_adapter*,int,int,int) ; 
 struct igb_adapter* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev,
			       int vf, u16 vlan, u8 qos)
{
	int err = 0;
	struct igb_adapter *adapter = FUNC5(netdev);

	if ((vf >= adapter->vfs_allocated_count) || (vlan > 4095) || (qos > 7))
		return -EINVAL;
	if (vlan || qos) {
		err = FUNC4(adapter, vlan, !!vlan, vf);
		if (err)
			goto out;
		FUNC3(adapter, vlan | (qos << VLAN_PRIO_SHIFT), vf);
		FUNC2(adapter, vf, !vlan);
		adapter->vf_data[vf].pf_vlan = vlan;
		adapter->vf_data[vf].pf_qos = qos;
		FUNC0(&adapter->pdev->dev,
			 "Setting VLAN %d, QOS 0x%x on VF %d\n", vlan, qos, vf);
		if (FUNC6(__IGB_DOWN, &adapter->state)) {
			FUNC1(&adapter->pdev->dev,
				 "The VF VLAN has been set, but the PF device is not up.\n");
			FUNC1(&adapter->pdev->dev,
				 "Bring the PF device up before attempting to use the VF device.\n");
		}
	} else {
		FUNC4(adapter, adapter->vf_data[vf].pf_vlan,
			     false, vf);
		FUNC3(adapter, vlan, vf);
		FUNC2(adapter, vf, true);
		adapter->vf_data[vf].pf_vlan = 0;
		adapter->vf_data[vf].pf_qos = 0;
	}
out:
	return err;
}