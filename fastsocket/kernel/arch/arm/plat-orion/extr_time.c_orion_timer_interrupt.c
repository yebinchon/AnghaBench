
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int BRIDGE_CAUSE ;
 int BRIDGE_INT_TIMER1_CLR ;
 int IRQ_HANDLED ;
 TYPE_1__ orion_clkevt ;
 int stub1 (TYPE_1__*) ;
 int writel (int ,int ) ;

__attribute__((used)) static irqreturn_t orion_timer_interrupt(int irq, void *dev_id)
{



 writel(BRIDGE_INT_TIMER1_CLR, BRIDGE_CAUSE);
 orion_clkevt.event_handler(&orion_clkevt);

 return IRQ_HANDLED;
}
