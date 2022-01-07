
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int * worker_thread; scalar_t__ data_flags; int work_waitq; } ;


 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DATA_READY ;
 int current ;
 scalar_t__ kthread_should_stop () ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_work_done (struct lpfc_hba*) ;
 int set_user_nice (int ,int) ;
 scalar_t__ test_and_clear_bit (int ,scalar_t__*) ;
 int wait_event_interruptible (int ,int) ;

int
lpfc_do_work(void *p)
{
 struct lpfc_hba *phba = p;
 int rc;

 set_user_nice(current, -20);
 phba->data_flags = 0;

 while (!kthread_should_stop()) {

  rc = wait_event_interruptible(phba->work_waitq,
     (test_and_clear_bit(LPFC_DATA_READY,
           &phba->data_flags)
      || kthread_should_stop()));

  if (rc) {
   lpfc_printf_log(phba, KERN_ERR, LOG_ELS,
     "0433 Wakeup on signal: rc=x%x\n", rc);
   break;
  }


  lpfc_work_done(phba);
 }
 phba->worker_thread = ((void*)0);
 lpfc_printf_log(phba, KERN_INFO, LOG_ELS,
   "0432 Worker thread stopped.\n");
 return 0;
}
