
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_queued_cmd {int * a_cmnd; scalar_t__ in_use; int cmnd_timer; } ;


 int del_timer_sync (int *) ;
 struct sdebug_queued_cmd* queued_arr ;
 int queued_arr_lock ;
 int scsi_debug_max_queue ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stop_all_queued(void)
{
 unsigned long iflags;
 int k;
 struct sdebug_queued_cmd *sqcp;

 spin_lock_irqsave(&queued_arr_lock, iflags);
 for (k = 0; k < scsi_debug_max_queue; ++k) {
  sqcp = &queued_arr[k];
  if (sqcp->in_use && sqcp->a_cmnd) {
   del_timer_sync(&sqcp->cmnd_timer);
   sqcp->in_use = 0;
   sqcp->a_cmnd = ((void*)0);
  }
 }
 spin_unlock_irqrestore(&queued_arr_lock, iflags);
}
