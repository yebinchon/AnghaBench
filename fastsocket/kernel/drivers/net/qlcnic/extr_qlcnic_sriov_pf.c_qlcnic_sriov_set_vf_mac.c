
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_vf_info {int state; TYPE_2__* vp; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {int * mac_addr; TYPE_1__* ahw; } ;
struct net_device {int addr_len; } ;
struct TYPE_4__ {int * mac; } ;
struct TYPE_3__ {struct qlcnic_sriov* sriov; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int QLC_BC_VF_STATE ;
 int compare_ether_addr (int *,int *) ;
 int is_valid_ether_addr (int *) ;
 int memcpy (int *,int *,int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netdev_info (struct net_device*,char*,int *,int) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

int qlcnic_sriov_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 int i, num_vfs = sriov->num_vfs;
 struct qlcnic_vf_info *vf_info;
 u8 *curr_mac;

 if (!qlcnic_sriov_pf_check(adapter))
  return -EOPNOTSUPP;

 if (!is_valid_ether_addr(mac) || vf >= num_vfs)
  return -EINVAL;

 if (!compare_ether_addr(adapter->mac_addr, mac)) {
  netdev_err(netdev, "MAC address is already in use by the PF\n");
  return -EINVAL;
 }

 for (i = 0; i < num_vfs; i++) {
  vf_info = &sriov->vf_info[i];
  if (!compare_ether_addr(vf_info->vp->mac, mac)) {
   netdev_err(netdev,
       "MAC address is already in use by VF %d\n",
       i);
   return -EINVAL;
  }
 }

 vf_info = &sriov->vf_info[vf];
 curr_mac = vf_info->vp->mac;

 if (test_bit(QLC_BC_VF_STATE, &vf_info->state)) {
  netdev_err(netdev,
      "MAC address change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\n",
      vf);
  return -EOPNOTSUPP;
 }

 memcpy(curr_mac, mac, netdev->addr_len);
 netdev_info(netdev, "MAC Address %pM  is configured for VF %d\n",
      mac, vf);
 return 0;
}
