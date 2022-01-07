
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef void* u16 ;
struct qlcnic_vport {void* handle; } ;
struct qlcnic_sriov {TYPE_2__* vf_info; void* vp_handle; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_4__ {struct qlcnic_vport* vp; } ;
struct TYPE_3__ {scalar_t__ pci_func; struct qlcnic_sriov* sriov; } ;


 int qlcnic_sriov_func_to_index (struct qlcnic_adapter*,scalar_t__) ;

__attribute__((used)) static void qlcnic_sriov_pf_set_vport_handle(struct qlcnic_adapter *adapter,
          u16 vport_handle, u8 func)
{
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_vport *vp;
 int index;

 if (adapter->ahw->pci_func == func) {
  sriov->vp_handle = vport_handle;
 } else {
  index = qlcnic_sriov_func_to_index(adapter, func);
  if (index < 0)
   return;
  vp = sriov->vf_info[index].vp;
  vp->handle = vport_handle;
 }
}
