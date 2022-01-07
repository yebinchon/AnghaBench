
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;


 int FRAME_CLEAR_REG ;
 int FRAME_RATE_REG ;
 int Q40_IRQ_FRAME ;
 int master_outb (int,int ) ;
 int panic (char*) ;
 int q40_timer_int ;
 int q40_timer_routine ;
 scalar_t__ request_irq (int,int ,int ,char*,int ) ;

void q40_sched_init (irq_handler_t timer_routine)
{
 int timer_irq;

 q40_timer_routine = timer_routine;
 timer_irq = Q40_IRQ_FRAME;

 if (request_irq(timer_irq, q40_timer_int, 0,
    "timer", q40_timer_int))
  panic("Couldn't register timer int");

 master_outb(-1, FRAME_CLEAR_REG);
 master_outb( 1, FRAME_RATE_REG);
}
