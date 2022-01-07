
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int work_func_t ;
struct qlcnic_vf_info {int trans_work; TYPE_1__* adapter; int state; } ;
struct TYPE_4__ {int bc_trans_wq; } ;
struct qlcnic_sriov {TYPE_2__ bc; } ;
struct TYPE_3__ {scalar_t__ need_fw_reset; } ;


 int QLC_BC_VF_FLR ;
 int queue_work (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_sriov_schedule_bc_cmd(struct qlcnic_sriov *sriov,
      struct qlcnic_vf_info *vf,
      work_func_t func)
{
 if (test_bit(QLC_BC_VF_FLR, &vf->state) ||
     vf->adapter->need_fw_reset)
  return;

 queue_work(sriov->bc.bc_trans_wq, &vf->trans_work);
}
