
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ARRAY_SIZE (int *) ;
 int * irqvals ;

__attribute__((used)) static u8 wv_irq_to_psa(int irq)
{
 if (irq < 0 || irq >= ARRAY_SIZE(irqvals))
  return 0;

 return irqvals[irq];
}
