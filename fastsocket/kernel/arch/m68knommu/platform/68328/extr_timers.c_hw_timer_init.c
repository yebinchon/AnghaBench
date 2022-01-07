
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shift; int mult; } ;


 int CLOCK_PRE ;
 int CLOCK_SOURCE ;
 int HZ ;
 int TCMP ;
 int TCTL ;
 int TCTL_IRQEN ;
 int TCTL_OM ;
 int TCTL_TEN ;
 int TICKS_PER_JIFFY ;
 int TMR_IRQ_NUM ;
 int TPRER ;
 int clocksource_hz2mult (int,int ) ;
 int clocksource_register (TYPE_1__*) ;
 TYPE_1__ m68328_clk ;
 int m68328_timer_irq ;
 int setup_irq (int ,int *) ;

void hw_timer_init(void)
{

 TCTL = 0;


 setup_irq(TMR_IRQ_NUM, &m68328_timer_irq);


 TCTL = TCTL_OM | TCTL_IRQEN | CLOCK_SOURCE;
 TPRER = CLOCK_PRE;
 TCMP = TICKS_PER_JIFFY;


 TCTL |= TCTL_TEN;
 m68328_clk.mult = clocksource_hz2mult(TICKS_PER_JIFFY*HZ, m68328_clk.shift);
 clocksource_register(&m68328_clk);
}
