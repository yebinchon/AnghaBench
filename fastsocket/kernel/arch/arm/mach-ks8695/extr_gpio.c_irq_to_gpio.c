
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int KS8695_IRQ_EXTERN0 ;
 unsigned int KS8695_IRQ_EXTERN3 ;

int irq_to_gpio(unsigned int irq)
{
 if ((irq < KS8695_IRQ_EXTERN0) || (irq > KS8695_IRQ_EXTERN3))
  return -EINVAL;

 return (irq - KS8695_IRQ_EXTERN0);
}
