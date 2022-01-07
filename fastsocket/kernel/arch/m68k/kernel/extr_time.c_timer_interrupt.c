
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int CPU_PROFILING ;
 int FSHIFT ;
 int IRQ_HANDLED ;
 int* avenrun ;
 int do_timer (int) ;
 int get_irq_regs () ;
 int mach_heartbeat (int) ;
 int profile_tick (int ) ;
 int update_process_times (int ) ;
 int user_mode (int ) ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dummy)
{
 do_timer(1);

 update_process_times(user_mode(get_irq_regs()));

 profile_tick(CPU_PROFILING);
 return IRQ_HANDLED;
}
