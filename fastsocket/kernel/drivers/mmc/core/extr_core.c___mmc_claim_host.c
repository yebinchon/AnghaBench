
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int claimed; scalar_t__ claimer; int claim_cnt; int wq; int lock; } ;
typedef int atomic_t ;


 int DECLARE_WAITQUEUE (int ,scalar_t__) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int atomic_read (int *) ;
 scalar_t__ current ;
 int might_sleep () ;
 int mmc_host_enable (struct mmc_host*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait ;
 int wake_up (int *) ;

int __mmc_claim_host(struct mmc_host *host, atomic_t *abort)
{
 DECLARE_WAITQUEUE(wait, current);
 unsigned long flags;
 int stop;

 might_sleep();

 add_wait_queue(&host->wq, &wait);
 spin_lock_irqsave(&host->lock, flags);
 while (1) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  stop = abort ? atomic_read(abort) : 0;
  if (stop || !host->claimed || host->claimer == current)
   break;
  spin_unlock_irqrestore(&host->lock, flags);
  schedule();
  spin_lock_irqsave(&host->lock, flags);
 }
 set_current_state(TASK_RUNNING);
 if (!stop) {
  host->claimed = 1;
  host->claimer = current;
  host->claim_cnt += 1;
 } else
  wake_up(&host->wq);
 spin_unlock_irqrestore(&host->lock, flags);
 remove_wait_queue(&host->wq, &wait);
 if (!stop)
  mmc_host_enable(host);
 return stop;
}
