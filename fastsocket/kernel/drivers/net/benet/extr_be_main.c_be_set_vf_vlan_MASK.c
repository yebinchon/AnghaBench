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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct be_adapter {int num_vfs; TYPE_2__* pdev; TYPE_1__* vf_cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int vlan_tag; int def_vid; int /*<<< orphan*/  if_handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int FUNC0 (struct be_adapter*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct be_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
			int vf, u16 vlan, u8 qos)
{
	struct be_adapter *adapter = FUNC2(netdev);
	int status = 0;

	if (!FUNC3(adapter))
		return -EPERM;

	if (vf >= adapter->num_vfs || vlan > 4095)
		return -EINVAL;

	if (vlan) {
		if (adapter->vf_cfg[vf].vlan_tag != vlan) {
			/* If this is new value, program it. Else skip. */
			adapter->vf_cfg[vf].vlan_tag = vlan;

			status = FUNC0(adapter, vlan,
				vf + 1, adapter->vf_cfg[vf].if_handle);
		}
	} else {
		/* Reset Transparent Vlan Tagging. */
		adapter->vf_cfg[vf].vlan_tag = 0;
		vlan = adapter->vf_cfg[vf].def_vid;
		status = FUNC0(adapter, vlan, vf + 1,
			adapter->vf_cfg[vf].if_handle);
	}


	if (status)
		FUNC1(&adapter->pdev->dev,
				"VLAN %d config on VF %d failed\n", vlan, vf);
	return status;
}