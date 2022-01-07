
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int worker_thread; } ;


 int kthread_stop (int ) ;

__attribute__((used)) static void
lpfc_unset_driver_resource_phase2(struct lpfc_hba *phba)
{

 kthread_stop(phba->worker_thread);
}
