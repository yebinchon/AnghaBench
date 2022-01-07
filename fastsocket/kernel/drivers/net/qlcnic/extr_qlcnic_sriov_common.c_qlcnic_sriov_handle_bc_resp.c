
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_vf_info {int state; int adapter; struct qlcnic_bc_trans* send_cmd; } ;
struct qlcnic_bc_trans {scalar_t__ trans_id; int curr_rsp_frag; int rsp_pay; int resp_cmpl; TYPE_1__* rsp_hdr; int rsp_pay_size; } ;
struct qlcnic_bc_hdr {scalar_t__ seq_id; } ;
struct TYPE_2__ {scalar_t__ num_frags; } ;


 int QLC_BC_VF_SEND ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int qlcnic_sriov_get_bc_paysize (int ,int) ;
 int qlcnic_sriov_pull_bc_msg (int ,int *,int *,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_sriov_handle_bc_resp(struct qlcnic_bc_hdr *hdr,
     struct qlcnic_vf_info *vf)
{
 struct qlcnic_bc_trans *trans;
 u32 pay_size;

 if (test_and_set_bit(QLC_BC_VF_SEND, &vf->state))
  return;

 trans = vf->send_cmd;

 if (trans == ((void*)0))
  goto clear_send;

 if (trans->trans_id != hdr->seq_id)
  goto clear_send;

 pay_size = qlcnic_sriov_get_bc_paysize(trans->rsp_pay_size,
            trans->curr_rsp_frag);
 qlcnic_sriov_pull_bc_msg(vf->adapter,
     (u32 *)(trans->rsp_hdr + trans->curr_rsp_frag),
     (u32 *)(trans->rsp_pay + trans->curr_rsp_frag),
     pay_size);
 if (++trans->curr_rsp_frag < trans->rsp_hdr->num_frags)
  goto clear_send;

 complete(&trans->resp_cmpl);

clear_send:
 clear_bit(QLC_BC_VF_SEND, &vf->state);
}
