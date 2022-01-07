
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_adapter {int state; TYPE_1__* ahw; } ;
struct TYPE_2__ {int op_mode; int pci_func; } ;


 int QLCNIC_MGMT_FUNC ;
 int __QLCNIC_SRIOV_ENABLE ;
 int __qlcnic_sriov_cleanup (struct qlcnic_adapter*) ;
 int clear_bit (int ,int *) ;
 int qlcnic_sriov_cfg_bc_intr (struct qlcnic_adapter*,int ) ;
 int qlcnic_sriov_enable_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_cfg_eswitch (struct qlcnic_adapter*,int ,int ) ;
 int qlcnic_sriov_pf_cfg_vlan_filtering (struct qlcnic_adapter*,int ) ;
 int qlcnic_sriov_pf_config_vport (struct qlcnic_adapter*,int ,int ) ;
 int qlcnic_sriov_pf_del_flr_queue (struct qlcnic_adapter*) ;

void qlcnic_sriov_pf_cleanup(struct qlcnic_adapter *adapter)
{
 u8 func = adapter->ahw->pci_func;

 if (!qlcnic_sriov_enable_check(adapter))
  return;

 qlcnic_sriov_pf_del_flr_queue(adapter);
 qlcnic_sriov_cfg_bc_intr(adapter, 0);
 qlcnic_sriov_pf_config_vport(adapter, 0, func);
 qlcnic_sriov_pf_cfg_eswitch(adapter, func, 0);
 qlcnic_sriov_pf_cfg_vlan_filtering(adapter, 0);
 __qlcnic_sriov_cleanup(adapter);
 adapter->ahw->op_mode = QLCNIC_MGMT_FUNC;
 clear_bit(__QLCNIC_SRIOV_ENABLE, &adapter->state);
}
