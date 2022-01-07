
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int expires; } ;


 int DPRINT (char*) ;
 scalar_t__ NeedSeek ;
 TYPE_1__ fd_timer ;
 scalar_t__ fdc_busy ;
 int fdc_wait ;
 scalar_t__ jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 int start_check_change_timer () ;
 int start_motor_off_timer () ;
 int stdma_release () ;
 int stop_timeout () ;
 scalar_t__ time_before (int ,scalar_t__) ;
 scalar_t__ timer_pending (TYPE_1__*) ;
 int wake_up (int *) ;

__attribute__((used)) static void finish_fdc_done( int dummy )
{
 unsigned long flags;

 DPRINT(("finish_fdc_done entered\n"));
 stop_timeout();
 NeedSeek = 0;

 if (timer_pending(&fd_timer) && time_before(fd_timer.expires, jiffies + 5))



  mod_timer(&fd_timer, jiffies + 5);
 else
  start_check_change_timer();
 start_motor_off_timer();

 local_irq_save(flags);
 stdma_release();
 fdc_busy = 0;
 wake_up( &fdc_wait );
 local_irq_restore(flags);

 DPRINT(("finish_fdc() finished\n"));
}
