
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_vport {scalar_t__ vlan; } ;
struct qlcnic_vf_info {int pci_func; int rx_ctx_id; struct qlcnic_vport* vp; } ;
struct qlcnic_adapter {int dummy; } ;


 int EINVAL ;
 int QLCNIC_MAC_ADD ;
 int QLCNIC_MAC_DEL ;
 int qlcnic_sriov_cfg_vf_def_mac (struct qlcnic_adapter*,struct qlcnic_vport*,int ,scalar_t__,int ) ;

__attribute__((used)) static int qlcnic_sriov_pf_del_guest_vlan(struct qlcnic_adapter *adapter,
       struct qlcnic_vf_info *vf)

{
 struct qlcnic_vport *vp = vf->vp;

 if (!vp->vlan)
  return -EINVAL;

 if (!vf->rx_ctx_id) {
  vp->vlan = 0;
  return 0;
 }

 qlcnic_sriov_cfg_vf_def_mac(adapter, vp, vf->pci_func,
        vp->vlan, QLCNIC_MAC_DEL);
 vp->vlan = 0;
 qlcnic_sriov_cfg_vf_def_mac(adapter, vp, vf->pci_func,
        0, QLCNIC_MAC_ADD);
 return 0;
}
