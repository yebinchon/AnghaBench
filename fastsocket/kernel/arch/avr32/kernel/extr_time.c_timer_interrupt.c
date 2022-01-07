
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int COMPARE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int intc_get_pending (int ) ;
 int stub1 (struct clock_event_device*) ;
 int sysreg_write (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evdev = dev_id;

 if (unlikely(!(intc_get_pending(0) & 1)))
  return IRQ_NONE;





 sysreg_write(COMPARE, 0);

 evdev->event_handler(evdev);
 return IRQ_HANDLED;
}
