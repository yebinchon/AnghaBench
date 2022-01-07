
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int work_func_t ;
struct qlcnic_vf_info {int flr_work; TYPE_1__* adapter; } ;
struct TYPE_4__ {int bc_flr_wq; } ;
struct qlcnic_sriov {TYPE_2__ bc; } ;
struct TYPE_3__ {int state; } ;


 int INIT_WORK (int *,int ) ;
 int __QLCNIC_RESETTING ;
 int queue_work (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_sriov_schedule_flr(struct qlcnic_sriov *sriov,
          struct qlcnic_vf_info *vf,
          work_func_t func)
{
 if (test_bit(__QLCNIC_RESETTING, &vf->adapter->state))
  return;

 INIT_WORK(&vf->flr_work, func);
 queue_work(sriov->bc.bc_flr_wq, &vf->flr_work);
}
