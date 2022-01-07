
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int pci_func; } ;


 int BIT_31 ;
 int qlcnic_sriov_pf_get_vport_handle (struct qlcnic_adapter*,int ) ;

void qlcnic_pf_set_interface_id_macaddr(struct qlcnic_adapter *adapter,
     u32 *int_id)
{
 u16 vpid;

 vpid = qlcnic_sriov_pf_get_vport_handle(adapter,
      adapter->ahw->pci_func);
 *int_id |= (vpid << 16) | BIT_31;
}
