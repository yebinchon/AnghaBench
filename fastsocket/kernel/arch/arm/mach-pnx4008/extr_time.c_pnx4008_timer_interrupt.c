
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int HSTIM_COUNTER ;
 int HSTIM_INT ;
 int HSTIM_MATCH0 ;
 int IRQ_HANDLED ;
 int LATCH ;
 int MATCH0_INT ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int timer_tick () ;

__attribute__((used)) static irqreturn_t pnx4008_timer_interrupt(int irq, void *dev_id)
{
 if (__raw_readl(HSTIM_INT) & MATCH0_INT) {

  do {
   timer_tick();






   __raw_writel(__raw_readl(HSTIM_MATCH0) + LATCH,
         HSTIM_MATCH0);
   __raw_writel(MATCH0_INT, HSTIM_INT);






  } while ((signed)
    (__raw_readl(HSTIM_MATCH0) -
     __raw_readl(HSTIM_COUNTER)) < 0);
 }

 return IRQ_HANDLED;
}
