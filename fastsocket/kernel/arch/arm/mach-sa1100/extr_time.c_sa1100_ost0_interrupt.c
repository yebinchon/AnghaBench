
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OIER ;
 int OIER_E0 ;
 int OSSR ;
 int OSSR_M0 ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t sa1100_ost0_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *c = dev_id;


 OIER &= ~OIER_E0;
 OSSR = OSSR_M0;
 c->event_handler(c);

 return IRQ_HANDLED;
}
