
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_HANDLED ;
 int IXP2000_T1_CLR ;
 int ixp2000_reg_wrb (int ,int) ;
 scalar_t__* missing_jiffy_timer_csr ;
 scalar_t__ next_jiffy_time ;
 long ticks_per_jiffy ;
 int timer_tick () ;

__attribute__((used)) static int ixp2000_timer_interrupt(int irq, void *dev_id)
{

 ixp2000_reg_wrb(IXP2000_T1_CLR, 1);

 while ((signed long)(next_jiffy_time - *missing_jiffy_timer_csr)
       >= ticks_per_jiffy) {
  timer_tick();
  next_jiffy_time -= ticks_per_jiffy;
 }

 return IRQ_HANDLED;
}
