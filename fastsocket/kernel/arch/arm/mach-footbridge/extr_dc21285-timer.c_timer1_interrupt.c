
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 scalar_t__* CSR_TIMER1_CLR ;
 int IRQ_HANDLED ;
 int timer_tick () ;

__attribute__((used)) static irqreturn_t
timer1_interrupt(int irq, void *dev_id)
{
 *CSR_TIMER1_CLR = 0;

 timer_tick();

 return IRQ_HANDLED;
}
