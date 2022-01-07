
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int IRQ_HANDLED ;
 TYPE_1__ itimer_clockevent ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t um_timer(int irq, void *dev)
{
 (*itimer_clockevent.event_handler)(&itimer_clockevent);

 return IRQ_HANDLED;
}
