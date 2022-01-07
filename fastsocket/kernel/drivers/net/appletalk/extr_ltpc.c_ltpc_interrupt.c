
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int idle (struct net_device*) ;
 int inb_p (scalar_t__) ;
 int printk (char*) ;

__attribute__((used)) static irqreturn_t
ltpc_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;

 if (dev==((void*)0)) {
  printk("ltpc_interrupt: unknown device.\n");
  return IRQ_NONE;
 }

 inb_p(dev->base_addr+6);

 idle(dev);



 return IRQ_HANDLED;
}
