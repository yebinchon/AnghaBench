
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int do_timer (int) ;
 int get_irq_regs () ;
 int pcic_clear_clock_irq () ;
 int update_process_times (int ) ;
 int user_mode (int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 int xtime_lock ;

__attribute__((used)) static irqreturn_t pcic_timer_handler (int irq, void *h)
{
 write_seqlock(&xtime_lock);
 pcic_clear_clock_irq();
 do_timer(1);
 write_sequnlock(&xtime_lock);

 update_process_times(user_mode(get_irq_regs()));

 return IRQ_HANDLED;
}
