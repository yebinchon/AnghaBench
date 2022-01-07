
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 scalar_t__ TICKS_PER_JIFFY ;
 int TSTAT ;
 int arch_timer_interrupt (int,void*) ;
 int m68328_tick_cnt ;

__attribute__((used)) static irqreturn_t hw_tick(int irq, void *dummy)
{

 TSTAT &= 0;

 m68328_tick_cnt += TICKS_PER_JIFFY;
 return arch_timer_interrupt(irq, dummy);
}
