
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int CPU_REG (int ,int ) ;
 int IRQ_HANDLED ;
 int TIMER_TOPSTAT ;
 int TIMER_VIRT ;
 int timer_tick () ;

__attribute__((used)) static irqreturn_t
h7201_timer_interrupt(int irq, void *dev_id)
{
 CPU_REG (TIMER_VIRT, TIMER_TOPSTAT);
 timer_tick();

 return IRQ_HANDLED;
}
