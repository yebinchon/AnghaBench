
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qlcnic_trans_list {scalar_t__ count; int lock; } ;
struct qlcnic_vf_info {int state; int * send_cmd; struct qlcnic_trans_list rcv_act; } ;
struct qlcnic_bc_trans {int list; } ;


 scalar_t__ QLC_BC_COMMAND ;
 scalar_t__ QLC_BC_RESPONSE ;
 int QLC_BC_VF_SEND ;
 int clear_bit (int ,int *) ;
 int list_del (int *) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_sriov_clear_trans(struct qlcnic_vf_info *vf,
        struct qlcnic_bc_trans *trans, u8 type)
{
 struct qlcnic_trans_list *t_list;
 unsigned long flags;
 int ret = 0;

 if (type == QLC_BC_RESPONSE) {
  t_list = &vf->rcv_act;
  spin_lock_irqsave(&t_list->lock, flags);
  t_list->count--;
  list_del(&trans->list);
  if (t_list->count > 0)
   ret = 1;
  spin_unlock_irqrestore(&t_list->lock, flags);
 }
 if (type == QLC_BC_COMMAND) {
  while (test_and_set_bit(QLC_BC_VF_SEND, &vf->state))
   msleep(100);
  vf->send_cmd = ((void*)0);
  clear_bit(QLC_BC_VF_SEND, &vf->state);
 }
 return ret;
}
