
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int QLCNIC_BC_CMD_CHANNEL_TERM ;
 int __qlcnic_sriov_cleanup (struct qlcnic_adapter*) ;
 int qlcnic_sriov_cfg_bc_intr (struct qlcnic_adapter*,int ) ;
 int qlcnic_sriov_channel_cfg_cmd (struct qlcnic_adapter*,int ) ;

__attribute__((used)) static void qlcnic_sriov_vf_cleanup(struct qlcnic_adapter *adapter)
{
 qlcnic_sriov_channel_cfg_cmd(adapter, QLCNIC_BC_CMD_CHANNEL_TERM);
 qlcnic_sriov_cfg_bc_intr(adapter, 0);
 __qlcnic_sriov_cleanup(adapter);
}
