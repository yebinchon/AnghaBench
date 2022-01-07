
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPLD_INTERRUPTS ;



__attribute__((used)) static void lh7a40x_unmask_cpld_irq (u32 irq)
{
 switch (irq) {
 case 128:
  CPLD_INTERRUPTS = CPLD_INTERRUPTS & ~ 0x4;
  break;
 case 129:
  CPLD_INTERRUPTS = CPLD_INTERRUPTS & ~ 0x8;
  break;
 }
}
