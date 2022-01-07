
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct MPT2SAS_ADAPTER {int fault_reset_work; int ioc_reset_in_progress_lock; struct workqueue_struct* fault_reset_work_q; } ;


 int cancel_delayed_work (int *) ;
 int destroy_workqueue (struct workqueue_struct*) ;
 int flush_workqueue (struct workqueue_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
mpt2sas_base_stop_watchdog(struct MPT2SAS_ADAPTER *ioc)
{
 unsigned long flags;
 struct workqueue_struct *wq;

 spin_lock_irqsave(&ioc->ioc_reset_in_progress_lock, flags);
 wq = ioc->fault_reset_work_q;
 ioc->fault_reset_work_q = ((void*)0);
 spin_unlock_irqrestore(&ioc->ioc_reset_in_progress_lock, flags);
 if (wq) {
  if (!cancel_delayed_work(&ioc->fault_reset_work))
   flush_workqueue(wq);
  destroy_workqueue(wq);
 }
}
