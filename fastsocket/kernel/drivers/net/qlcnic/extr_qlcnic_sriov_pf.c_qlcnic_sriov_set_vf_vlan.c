
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qlcnic_vport {int vlan; int qos; int vlan_mode; } ;
struct qlcnic_vf_info {int state; struct qlcnic_vport* vp; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MAX_VLAN_ID ;
 int QLC_BC_VF_STATE ;
 int QLC_GUEST_VLAN_MODE ;
 int QLC_NO_VLAN_MODE ;
 int QLC_PVID_MODE ;
 int netdev_err (struct net_device*,char*,int) ;
 int netdev_info (struct net_device*,char*,int,int,int) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

int qlcnic_sriov_set_vf_vlan(struct net_device *netdev, int vf,
        u16 vlan, u8 qos)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_vf_info *vf_info;
 struct qlcnic_vport *vp;

 if (!qlcnic_sriov_pf_check(adapter))
  return -EOPNOTSUPP;

 if (vf >= sriov->num_vfs || qos > 7)
  return -EINVAL;

 if (vlan > MAX_VLAN_ID) {
  netdev_err(netdev,
      "Invalid VLAN ID, allowed range is [0 - %d]\n",
      MAX_VLAN_ID);
  return -EINVAL;
 }

 vf_info = &sriov->vf_info[vf];
 vp = vf_info->vp;
 if (test_bit(QLC_BC_VF_STATE, &vf_info->state)) {
  netdev_err(netdev,
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

 netdev_info(netdev, "Setting VLAN %d, QoS %d, for VF %d\n",
      vlan, qos, vf);
 return 0;
}
