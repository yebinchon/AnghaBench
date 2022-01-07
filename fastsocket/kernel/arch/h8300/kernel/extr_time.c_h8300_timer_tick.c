
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pid; } ;


 int CPU_PROFILING ;
 TYPE_1__* current ;
 int do_timer (int) ;
 int get_irq_regs () ;
 int profile_tick (int ) ;
 int update_process_times (int ) ;
 int user_mode (int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 int xtime_lock ;

void h8300_timer_tick(void)
{
 if (current->pid)
  profile_tick(CPU_PROFILING);
 write_seqlock(&xtime_lock);
 do_timer(1);
 write_sequnlock(&xtime_lock);
 update_process_times(user_mode(get_irq_regs()));
}
