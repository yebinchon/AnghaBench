
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct completion {int dummy; } ;
struct qlcnic_vf_info {int state; struct completion ch_free_cmpl; } ;
struct qlcnic_bc_trans {int trans_state; struct qlcnic_vf_info* vf; } ;


 int QLC_ABORT ;
 int QLC_BC_VF_CHANNEL ;
 int QLC_MBOX_CH_FREE_TIMEOUT ;
 int clear_bit (int ,int *) ;
 int qlcnic_sriov_handle_multi_frags (struct qlcnic_bc_trans*,int ) ;
 int wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static void qlcnic_sriov_wait_for_channel_free(struct qlcnic_bc_trans *trans,
            u8 type)
{
 struct qlcnic_vf_info *vf = trans->vf;
 struct completion *cmpl = &vf->ch_free_cmpl;

 if (!wait_for_completion_timeout(cmpl, QLC_MBOX_CH_FREE_TIMEOUT)) {
  trans->trans_state = QLC_ABORT;
  return;
 }

 clear_bit(QLC_BC_VF_CHANNEL, &vf->state);
 qlcnic_sriov_handle_multi_frags(trans, type);
}
