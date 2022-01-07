
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int EP93XX_TIMER1_CLEAR ;
 int EP93XX_TIMER4_VALUE_LOW ;
 int IRQ_HANDLED ;
 long TIMER4_TICKS_PER_JIFFY ;
 scalar_t__ __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 scalar_t__ last_jiffy_time ;
 int timer_tick () ;

__attribute__((used)) static irqreturn_t ep93xx_timer_interrupt(int irq, void *dev_id)
{
 __raw_writel(1, EP93XX_TIMER1_CLEAR);
 while ((signed long)
  (__raw_readl(EP93XX_TIMER4_VALUE_LOW) - last_jiffy_time)
      >= TIMER4_TICKS_PER_JIFFY) {
  last_jiffy_time += TIMER4_TICKS_PER_JIFFY;
  timer_tick();
 }

 return IRQ_HANDLED;
}
