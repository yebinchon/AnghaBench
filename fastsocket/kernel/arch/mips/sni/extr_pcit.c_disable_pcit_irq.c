
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u32 ;


 scalar_t__ SNI_PCIT_INT_REG ;
 unsigned int SNI_PCIT_INT_START ;

void disable_pcit_irq(unsigned int irq)
{
 u32 mask = 1 << (irq - SNI_PCIT_INT_START + 24);

 *(volatile u32 *)SNI_PCIT_INT_REG &= ~mask;
}
