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
typedef  int u8 ;
typedef  int u16 ;
struct qlcnic_vport {int vlan; int qos; int /*<<< orphan*/  vlan_mode; } ;
struct qlcnic_vf_info {int /*<<< orphan*/  state; struct qlcnic_vport* vp; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int MAX_VLAN_ID ; 
 int /*<<< orphan*/  QLC_BC_VF_STATE ; 
 int /*<<< orphan*/  QLC_GUEST_VLAN_MODE ; 
 int /*<<< orphan*/  QLC_NO_VLAN_MODE ; 
 int /*<<< orphan*/  QLC_PVID_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int,int,int) ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct net_device *netdev, int vf,
			     u16 vlan, u8 qos)
{
	struct qlcnic_adapter *adapter = FUNC2(netdev);
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	struct qlcnic_vf_info *vf_info;
	struct qlcnic_vport *vp;

	if (!FUNC3(adapter))
		return -EOPNOTSUPP;

	if (vf >= sriov->num_vfs || qos > 7)
		return -EINVAL;

	if (vlan > MAX_VLAN_ID) {
		FUNC0(netdev,
			   "Invalid VLAN ID, allowed range is [0 - %d]\n",
			   MAX_VLAN_ID);
		return -EINVAL;
	}

	vf_info = &sriov->vf_info[vf];
	vp = vf_info->vp;
	if (FUNC4(QLC_BC_VF_STATE, &vf_info->state)) {
		FUNC0(netdev,
			   "VLAN change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\n",
			   vf);
		return -EOPNOTSUPP;
	}

	switch (vlan) {
	case 4095:
		vp->vlan_mode = QLC_GUEST_VLAN_MODE;
		break;
	case 0:
		vp->vlan_mode = QLC_NO_VLAN_MODE;
		vp->vlan = 0;
		vp->qos = 0;
		break;
	default:
		vp->vlan_mode = QLC_PVID_MODE;
		vp->vlan = vlan;
		vp->qos = qos;
	}

	FUNC1(netdev, "Setting VLAN %d, QoS %d, for VF %d\n",
		    vlan, qos, vf);
	return 0;
}