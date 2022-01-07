
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int irq_handler_t ;


 int EINVAL ;
 unsigned int NO_IRQ ;
 unsigned int irq_create_mapping (int *,int ) ;
 int request_irq (unsigned int,int ,unsigned long,char const*,void*) ;

int ibmebus_request_irq(u32 ist, irq_handler_t handler,
   unsigned long irq_flags, const char *devname,
   void *dev_id)
{
 unsigned int irq = irq_create_mapping(((void*)0), ist);

 if (irq == NO_IRQ)
  return -EINVAL;

 return request_irq(irq, handler, irq_flags, devname, dev_id);
}
