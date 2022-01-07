
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 scalar_t__ AT91_TC ;
 scalar_t__ AT91_TC_CLK1BASE ;
 scalar_t__ AT91_TC_SR ;
 int IRQ_HANDLED ;
 int at91_sys_read (scalar_t__) ;
 int timer_tick () ;

__attribute__((used)) static irqreturn_t at91x40_timer_interrupt(int irq, void *dev_id)
{
 at91_sys_read(AT91_TC + AT91_TC_CLK1BASE + AT91_TC_SR);
 timer_tick();
 return IRQ_HANDLED;
}
