
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct qlcnic_vf_info {int state; int pci_func; struct qlcnic_adapter* adapter; } ;
struct TYPE_4__ {scalar_t__* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; } ;
struct qlcnic_bc_trans {TYPE_1__* req_hdr; struct qlcnic_vf_info* vf; } ;
struct qlcnic_adapter {int dummy; } ;
struct TYPE_3__ {scalar_t__ cmd_op; } ;


 scalar_t__ QLCNIC_BC_CMD_CHANNEL_INIT ;
 int QLC_BC_VF_STATE ;
 int clear_bit (int ,int *) ;
 int qlcnic_sriov_pf_config_vport (struct qlcnic_adapter*,int,int ) ;
 int qlcnic_sriov_set_vf_vport_info (struct qlcnic_adapter*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_sriov_pf_channel_cfg_cmd(struct qlcnic_bc_trans *trans,
        struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_vf_info *vf = trans->vf;
 struct qlcnic_adapter *adapter = vf->adapter;
 int err;
 u16 func = vf->pci_func;

 cmd->rsp.arg[0] = trans->req_hdr->cmd_op;
 cmd->rsp.arg[0] |= (1 << 16);

 if (trans->req_hdr->cmd_op == QLCNIC_BC_CMD_CHANNEL_INIT) {
  err = qlcnic_sriov_pf_config_vport(adapter, 1, func);
  if (!err) {
   err = qlcnic_sriov_set_vf_vport_info(adapter, func);
   if (err)
    qlcnic_sriov_pf_config_vport(adapter, 0, func);
  }
 } else {
  err = qlcnic_sriov_pf_config_vport(adapter, 0, func);
 }

 if (err)
  goto err_out;

 cmd->rsp.arg[0] |= (1 << 25);

 if (trans->req_hdr->cmd_op == QLCNIC_BC_CMD_CHANNEL_INIT)
  set_bit(QLC_BC_VF_STATE, &vf->state);
 else
  clear_bit(QLC_BC_VF_STATE, &vf->state);

 return err;

err_out:
 cmd->rsp.arg[0] |= (2 << 25);
 return err;
}
