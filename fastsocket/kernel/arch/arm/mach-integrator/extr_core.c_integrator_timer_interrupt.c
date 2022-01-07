
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIMER1_VA_BASE ;
 scalar_t__ TIMER_INTCLR ;
 int timer_tick () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t
integrator_timer_interrupt(int irq, void *dev_id)
{



 writel(1, TIMER1_VA_BASE + TIMER_INTCLR);

 timer_tick();

 return IRQ_HANDLED;
}
