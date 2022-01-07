
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int P_TIMER0_CPP_REG ;
 int outl (int,int ) ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evdev = dev_id;


 outl(1, P_TIMER0_CPP_REG);
 evdev->event_handler(evdev);

 return IRQ_HANDLED;
}
