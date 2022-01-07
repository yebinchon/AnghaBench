
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_4__ {int lock; int count; int wait_list; } ;
struct qlcnic_vf_info {TYPE_2__ rcv_pend; int pci_func; struct qlcnic_adapter* adapter; int state; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_cmd_args {scalar_t__ op_type; } ;
struct qlcnic_bc_trans {int curr_req_frag; int req_pay; int list; TYPE_1__* req_hdr; int trans_id; struct qlcnic_vf_info* vf; int func_id; int req_pay_size; } ;
struct qlcnic_bc_hdr {scalar_t__ op_type; scalar_t__ cmd_op; int frag_num; int seq_id; } ;
struct qlcnic_adapter {scalar_t__ need_fw_reset; } ;
struct TYPE_3__ {scalar_t__ num_frags; } ;


 scalar_t__ QLCNIC_BC_CMD_CHANNEL_INIT ;
 scalar_t__ QLC_BC_CMD ;
 int QLC_BC_COMMAND ;
 int QLC_BC_VF_STATE ;
 int list_add_tail (int *,int *) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,scalar_t__) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_sriov_add_act_list (struct qlcnic_sriov*,struct qlcnic_vf_info*,struct qlcnic_bc_trans*) ;
 int qlcnic_sriov_alloc_bc_mbx_args (struct qlcnic_cmd_args*,scalar_t__) ;
 scalar_t__ qlcnic_sriov_alloc_bc_trans (struct qlcnic_bc_trans**) ;
 int qlcnic_sriov_cleanup_transaction (struct qlcnic_bc_trans*) ;
 int qlcnic_sriov_get_bc_paysize (int ,int) ;
 int qlcnic_sriov_handle_pending_trans (struct qlcnic_sriov*,struct qlcnic_vf_info*,struct qlcnic_bc_hdr*) ;
 scalar_t__ qlcnic_sriov_prepare_bc_hdr (struct qlcnic_bc_trans*,struct qlcnic_cmd_args*,int ,int ) ;
 int qlcnic_sriov_pull_bc_msg (struct qlcnic_adapter*,int *,int *,int ) ;
 scalar_t__ qlcnic_sriov_soft_flr_check (struct qlcnic_adapter*,struct qlcnic_bc_trans*,struct qlcnic_vf_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_sriov_handle_bc_cmd(struct qlcnic_sriov *sriov,
           struct qlcnic_bc_hdr *hdr,
           struct qlcnic_vf_info *vf)
{
 struct qlcnic_bc_trans *trans;
 struct qlcnic_adapter *adapter = vf->adapter;
 struct qlcnic_cmd_args cmd;
 u32 pay_size;
 int err;
 u8 cmd_op;

 if (adapter->need_fw_reset)
  return;

 if (!test_bit(QLC_BC_VF_STATE, &vf->state) &&
     hdr->op_type != QLC_BC_CMD &&
     hdr->cmd_op != QLCNIC_BC_CMD_CHANNEL_INIT)
  return;

 if (hdr->frag_num > 1) {
  qlcnic_sriov_handle_pending_trans(sriov, vf, hdr);
  return;
 }

 cmd_op = hdr->cmd_op;
 if (qlcnic_sriov_alloc_bc_trans(&trans))
  return;

 if (hdr->op_type == QLC_BC_CMD)
  err = qlcnic_sriov_alloc_bc_mbx_args(&cmd, cmd_op);
 else
  err = qlcnic_alloc_mbx_args(&cmd, adapter, cmd_op);

 if (err) {
  qlcnic_sriov_cleanup_transaction(trans);
  return;
 }

 cmd.op_type = hdr->op_type;
 if (qlcnic_sriov_prepare_bc_hdr(trans, &cmd, hdr->seq_id,
     QLC_BC_COMMAND)) {
  qlcnic_free_mbx_args(&cmd);
  qlcnic_sriov_cleanup_transaction(trans);
  return;
 }

 pay_size = qlcnic_sriov_get_bc_paysize(trans->req_pay_size,
      trans->curr_req_frag);
 qlcnic_sriov_pull_bc_msg(vf->adapter,
     (u32 *)(trans->req_hdr + trans->curr_req_frag),
     (u32 *)(trans->req_pay + trans->curr_req_frag),
     pay_size);
 trans->func_id = vf->pci_func;
 trans->vf = vf;
 trans->trans_id = hdr->seq_id;
 trans->curr_req_frag++;

 if (qlcnic_sriov_soft_flr_check(adapter, trans, vf))
  return;

 if (trans->curr_req_frag == trans->req_hdr->num_frags) {
  if (qlcnic_sriov_add_act_list(sriov, vf, trans)) {
   qlcnic_free_mbx_args(&cmd);
   qlcnic_sriov_cleanup_transaction(trans);
  }
 } else {
  spin_lock(&vf->rcv_pend.lock);
  list_add_tail(&trans->list, &vf->rcv_pend.wait_list);
  vf->rcv_pend.count++;
  spin_unlock(&vf->rcv_pend.lock);
 }
}
