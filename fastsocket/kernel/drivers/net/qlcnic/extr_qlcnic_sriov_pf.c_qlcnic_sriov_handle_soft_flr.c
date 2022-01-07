
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_vf_info {int pci_func; struct qlcnic_bc_trans* flr_trans; int state; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_bc_trans {int dummy; } ;
struct qlcnic_adapter {int netdev; TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;


 int QLC_BC_VF_FLR ;
 int QLC_BC_VF_SOFT_FLR ;
 int QLC_BC_VF_STATE ;
 int clear_bit (int ,int *) ;
 int netdev_info (int ,char*,int ) ;
 int qlcnic_sriov_pf_process_flr ;
 int qlcnic_sriov_schedule_flr (struct qlcnic_sriov*,struct qlcnic_vf_info*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_sriov_handle_soft_flr(struct qlcnic_adapter *adapter,
      struct qlcnic_bc_trans *trans,
      struct qlcnic_vf_info *vf)
{
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;

 set_bit(QLC_BC_VF_FLR, &vf->state);
 clear_bit(QLC_BC_VF_STATE, &vf->state);
 set_bit(QLC_BC_VF_SOFT_FLR, &vf->state);
 vf->flr_trans = trans;
 qlcnic_sriov_schedule_flr(sriov, vf, qlcnic_sriov_pf_process_flr);
 netdev_info(adapter->netdev, "Software FLR for PCI func %d\n",
      vf->pci_func);
}
