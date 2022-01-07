
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIMER_EOI ;
 int timer_tick () ;

__attribute__((used)) static irqreturn_t
lh7a40x_timer_interrupt(int irq, void *dev_id)
{
 TIMER_EOI = 0;
 timer_tick();

 return IRQ_HANDLED;
}
