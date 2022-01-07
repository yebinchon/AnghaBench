
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pica ;
 scalar_t__ picb ;

int apollo_irq_startup(unsigned int irq)
{
 if (irq < 8)
  *(volatile unsigned char *)(pica+1) &= ~(1 << irq);
 else
  *(volatile unsigned char *)(picb+1) &= ~(1 << (irq - 8));
 return 0;
}
