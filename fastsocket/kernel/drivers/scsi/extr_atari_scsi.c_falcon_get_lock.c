
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_A_TT () ;
 int falcon_fairness_wait ;
 int falcon_got_lock ;
 int falcon_try_wait ;
 int falcon_trying_lock ;
 scalar_t__ in_irq () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int panic (char*) ;
 int scsi_falcon_intr ;
 int sleep_on (int *) ;
 int stdma_lock (int ,int *) ;
 scalar_t__ stdma_others_waiting () ;
 int wake_up (int *) ;

__attribute__((used)) static void falcon_get_lock(void)
{
 unsigned long flags;

 if (IS_A_TT())
  return;

 local_irq_save(flags);

 while (!in_irq() && falcon_got_lock && stdma_others_waiting())
  sleep_on(&falcon_fairness_wait);

 while (!falcon_got_lock) {
  if (in_irq())
   panic("Falcon SCSI hasn't ST-DMA lock in interrupt");
  if (!falcon_trying_lock) {
   falcon_trying_lock = 1;
   stdma_lock(scsi_falcon_intr, ((void*)0));
   falcon_got_lock = 1;
   falcon_trying_lock = 0;
   wake_up(&falcon_try_wait);
  } else {
   sleep_on(&falcon_try_wait);
  }
 }

 local_irq_restore(flags);
 if (!falcon_got_lock)
  panic("Falcon SCSI: someone stole the lock :-(\n");
}
