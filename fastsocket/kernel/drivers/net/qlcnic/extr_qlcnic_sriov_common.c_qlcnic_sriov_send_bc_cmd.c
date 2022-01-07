
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_vf_info {int send_cmd_lock; struct qlcnic_bc_trans* send_cmd; int state; } ;
struct qlcnic_bc_trans {int func_id; scalar_t__ cmd_id; struct qlcnic_vf_info* vf; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {struct qlcnic_vf_info* vf_info; } ;


 int EIO ;
 scalar_t__ QLCNIC_BC_CMD_CHANNEL_INIT ;
 int QLC_BC_COMMAND ;
 int QLC_BC_VF_STATE ;
 int __qlcnic_sriov_send_bc_msg (struct qlcnic_bc_trans*,struct qlcnic_vf_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qlcnic_sriov_clear_trans (struct qlcnic_vf_info*,struct qlcnic_bc_trans*,int ) ;
 int qlcnic_sriov_func_to_index (struct qlcnic_adapter*,int) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_sriov_send_bc_cmd(struct qlcnic_adapter *adapter,
        struct qlcnic_bc_trans *trans, int pci_func)
{
 struct qlcnic_vf_info *vf;
 int err, index = qlcnic_sriov_func_to_index(adapter, pci_func);

 if (index < 0)
  return -EIO;

 vf = &adapter->ahw->sriov->vf_info[index];
 trans->vf = vf;
 trans->func_id = pci_func;

 if (!test_bit(QLC_BC_VF_STATE, &vf->state)) {
  if (qlcnic_sriov_pf_check(adapter))
   return -EIO;
  if (qlcnic_sriov_vf_check(adapter) &&
      trans->cmd_id != QLCNIC_BC_CMD_CHANNEL_INIT)
   return -EIO;
 }

 mutex_lock(&vf->send_cmd_lock);
 vf->send_cmd = trans;
 err = __qlcnic_sriov_send_bc_msg(trans, vf, QLC_BC_COMMAND);
 qlcnic_sriov_clear_trans(vf, trans, QLC_BC_COMMAND);
 mutex_unlock(&vf->send_cmd_lock);
 return err;
}
