
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_back_channel {int bc_flr_wq; } ;
struct qlcnic_sriov {int num_vfs; TYPE_2__* vf_info; struct qlcnic_back_channel bc; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_4__ {int flr_work; } ;
struct TYPE_3__ {struct qlcnic_sriov* sriov; } ;


 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;

__attribute__((used)) static void qlcnic_sriov_pf_del_flr_queue(struct qlcnic_adapter *adapter)
{
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_back_channel *bc = &sriov->bc;
 int i;

 for (i = 0; i < sriov->num_vfs; i++)
  cancel_work_sync(&sriov->vf_info[i].flr_work);

 destroy_workqueue(bc->bc_flr_wq);
}
