
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int worker_thread; int brd_no; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kthread_run (int ,struct lpfc_hba*,char*,int ) ;
 int lpfc_do_work ;

__attribute__((used)) static int
lpfc_setup_driver_resource_phase2(struct lpfc_hba *phba)
{
 int error;


 phba->worker_thread = kthread_run(lpfc_do_work, phba,
       "lpfc_worker_%d", phba->brd_no);
 if (IS_ERR(phba->worker_thread)) {
  error = PTR_ERR(phba->worker_thread);
  return error;
 }

 return 0;
}
