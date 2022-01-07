
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_pinmux_bank {int virq; } ;


 int ENOENT ;
 int NR_BANKS ;
 struct stmp3xxx_pinmux_bank* pinmux_banks ;

__attribute__((used)) static int stmp3xxx_irq_to_gpio(int irq,
 struct stmp3xxx_pinmux_bank **bank, unsigned *gpio)
{
 struct stmp3xxx_pinmux_bank *pm;

 for (pm = pinmux_banks; pm < pinmux_banks + NR_BANKS; pm++)
  if (pm->virq <= irq && irq < pm->virq + 32) {
   *bank = pm;
   *gpio = irq - pm->virq;
   return 0;
  }
 return -ENOENT;
}
