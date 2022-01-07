
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IXP23XX_TIMER1_INT_PEND ;
 scalar_t__* IXP23XX_TIMER_CONT ;
 int * IXP23XX_TIMER_STATUS ;
 long LATCH ;
 scalar_t__ next_jiffy_time ;
 int timer_tick () ;

__attribute__((used)) static irqreturn_t
ixp23xx_timer_interrupt(int irq, void *dev_id)
{

 *IXP23XX_TIMER_STATUS = IXP23XX_TIMER1_INT_PEND;
 while ((signed long)(*IXP23XX_TIMER_CONT - next_jiffy_time) >= LATCH) {
  timer_tick();
  next_jiffy_time += LATCH;
 }

 return IRQ_HANDLED;
}
