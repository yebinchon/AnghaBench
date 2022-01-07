
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IXP4XX_ICMR ;
 int* IXP4XX_ICMR2 ;
 scalar_t__ cpu_is_ixp43x () ;
 scalar_t__ cpu_is_ixp46x () ;

__attribute__((used)) static void ixp4xx_irq_mask(unsigned int irq)
{
 if ((cpu_is_ixp46x() || cpu_is_ixp43x()) && irq >= 32)
  *IXP4XX_ICMR2 &= ~(1 << (irq - 32));
 else
  *IXP4XX_ICMR &= ~(1 << irq);
}
