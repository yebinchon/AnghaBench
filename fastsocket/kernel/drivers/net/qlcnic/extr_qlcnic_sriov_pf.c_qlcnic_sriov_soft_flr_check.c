
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_vf_info {int state; } ;
struct qlcnic_bc_trans {struct qlcnic_bc_hdr* req_hdr; } ;
struct qlcnic_bc_hdr {scalar_t__ cmd_op; scalar_t__ op_type; } ;
struct qlcnic_adapter {int dummy; } ;


 scalar_t__ QLCNIC_BC_CMD_CHANNEL_INIT ;
 scalar_t__ QLC_BC_CMD ;
 int QLC_BC_VF_STATE ;
 int qlcnic_sriov_handle_soft_flr (struct qlcnic_adapter*,struct qlcnic_bc_trans*,struct qlcnic_vf_info*) ;
 scalar_t__ test_bit (int ,int *) ;

bool qlcnic_sriov_soft_flr_check(struct qlcnic_adapter *adapter,
     struct qlcnic_bc_trans *trans,
     struct qlcnic_vf_info *vf)
{
 struct qlcnic_bc_hdr *hdr = trans->req_hdr;

 if ((hdr->cmd_op == QLCNIC_BC_CMD_CHANNEL_INIT) &&
     (hdr->op_type == QLC_BC_CMD) &&
      test_bit(QLC_BC_VF_STATE, &vf->state)) {
  qlcnic_sriov_handle_soft_flr(adapter, trans, vf);
  return 1;
 }

 return 0;
}
