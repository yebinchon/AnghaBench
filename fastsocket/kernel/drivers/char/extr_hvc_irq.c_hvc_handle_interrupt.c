
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int hvc_kick () ;
 scalar_t__ hvc_poll (void*) ;

__attribute__((used)) static irqreturn_t hvc_handle_interrupt(int irq, void *dev_instance)
{

 if (hvc_poll(dev_instance))
  hvc_kick();
 return IRQ_HANDLED;
}
