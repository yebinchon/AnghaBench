
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 int netdev_err (struct net_device*,char*,int ,int) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_sriov_cfg_vf_guest_vlan (struct qlcnic_adapter*,int ,int ) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;

__attribute__((used)) static void qlcnic_vlan_rx_del(struct net_device *netdev, u16 vid)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 int err;

 if (qlcnic_sriov_vf_check(adapter)) {
  err = qlcnic_sriov_cfg_vf_guest_vlan(adapter, vid, 0);
  if (err) {
   netdev_err(netdev,
       "Cannot delete VLAN filter for VLAN id %d, err=%d",
       vid, err);
   return;
  }
 }
}
