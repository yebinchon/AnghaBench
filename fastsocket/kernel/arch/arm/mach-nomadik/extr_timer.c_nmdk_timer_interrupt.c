
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int IRQ_HANDLED ;
 scalar_t__ MTU_ICR ;
 scalar_t__ mtu_base ;
 TYPE_1__ nmdk_clkevt ;
 int nmdk_count ;
 scalar_t__ nmdk_cycle ;
 int stub1 (TYPE_1__*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t nmdk_timer_interrupt(int irq, void *dev_id)
{

 writel( 1 << 0, mtu_base + MTU_ICR);


 nmdk_count += nmdk_cycle;
 nmdk_clkevt.event_handler(&nmdk_clkevt);

 return IRQ_HANDLED;
}
