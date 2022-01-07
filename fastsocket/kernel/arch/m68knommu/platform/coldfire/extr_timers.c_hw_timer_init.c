
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shift; int mult; } ;


 int FREQ ;
 int HZ ;
 int MCFTIMER_TMR ;
 int MCFTIMER_TMR_CLK16 ;
 int MCFTIMER_TMR_DISABLE ;
 int MCFTIMER_TMR_ENABLE ;
 int MCFTIMER_TMR_ENORI ;
 int MCFTIMER_TMR_RESTART ;
 int MCFTIMER_TRR ;
 int MCF_IRQ_TIMER ;
 int TA (int ) ;
 int __raw_writetrr (int,int ) ;
 int __raw_writew (int,int ) ;
 int clocksource_hz2mult (int,int ) ;
 int clocksource_register (TYPE_1__*) ;
 int coldfire_profile_init () ;
 TYPE_1__ mcftmr_clk ;
 int mcftmr_cycles_per_jiffy ;
 int mcftmr_timer_irq ;
 int setup_irq (int ,int *) ;

void hw_timer_init(void)
{
 __raw_writew(MCFTIMER_TMR_DISABLE, TA(MCFTIMER_TMR));
 mcftmr_cycles_per_jiffy = FREQ / HZ;






 __raw_writetrr(mcftmr_cycles_per_jiffy - 1, TA(MCFTIMER_TRR));
 __raw_writew(MCFTIMER_TMR_ENORI | MCFTIMER_TMR_CLK16 |
  MCFTIMER_TMR_RESTART | MCFTIMER_TMR_ENABLE, TA(MCFTIMER_TMR));

 mcftmr_clk.mult = clocksource_hz2mult(FREQ, mcftmr_clk.shift);
 clocksource_register(&mcftmr_clk);

 setup_irq(MCF_IRQ_TIMER, &mcftmr_timer_irq);




}
