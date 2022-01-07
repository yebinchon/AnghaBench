
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 unsigned int IRQ_TYPE_NONE ;

__attribute__((used)) static int gpio_irq_type(unsigned irq, unsigned type)
{
 if (type != IRQ_TYPE_EDGE_BOTH && type != IRQ_TYPE_NONE)
  return -EINVAL;

 return 0;
}
