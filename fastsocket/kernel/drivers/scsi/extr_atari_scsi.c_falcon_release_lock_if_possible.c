
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NCR5380_hostdata {int connected; int issue_queue; int disconnected_queue; } ;


 scalar_t__ IS_A_TT () ;
 scalar_t__ falcon_dont_release ;
 int falcon_fairness_wait ;
 scalar_t__ falcon_got_lock ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*) ;
 int stdma_release () ;
 int wake_up (int *) ;

__attribute__((used)) static void falcon_release_lock_if_possible(struct NCR5380_hostdata *hostdata)
{
 unsigned long flags;

 if (IS_A_TT())
  return;

 local_irq_save(flags);

 if (falcon_got_lock && !hostdata->disconnected_queue &&
     !hostdata->issue_queue && !hostdata->connected) {

  if (falcon_dont_release) {



   local_irq_restore(flags);
   return;
  }
  falcon_got_lock = 0;
  stdma_release();
  wake_up(&falcon_fairness_wait);
 }

 local_irq_restore(flags);
}
