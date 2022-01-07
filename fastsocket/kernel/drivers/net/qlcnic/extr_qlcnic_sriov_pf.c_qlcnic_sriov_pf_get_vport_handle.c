
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qlcnic_vf_info {TYPE_2__* vp; } ;
struct qlcnic_sriov {int vp_handle; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_4__ {int handle; } ;
struct TYPE_3__ {scalar_t__ pci_func; struct qlcnic_sriov* sriov; } ;


 int EINVAL ;
 int qlcnic_sriov_func_to_index (struct qlcnic_adapter*,scalar_t__) ;

__attribute__((used)) static int qlcnic_sriov_pf_get_vport_handle(struct qlcnic_adapter *adapter,
         u8 func)
{
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_vf_info *vf_info;
 int index;

 if (adapter->ahw->pci_func == func) {
  return sriov->vp_handle;
 } else {
  index = qlcnic_sriov_func_to_index(adapter, func);
  if (index >= 0) {
   vf_info = &sriov->vf_info[index];
   return vf_info->vp->handle;
  }
 }

 return -EINVAL;
}
