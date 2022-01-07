
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_pinmux_bank {int pin2irq; int irqen; } ;


 int stmp3xxx_clearl (int,int ) ;
 int stmp3xxx_irq_to_gpio (unsigned int,struct stmp3xxx_pinmux_bank**,unsigned int*) ;

__attribute__((used)) static void stmp3xxx_pin_mask_irq(unsigned irq)
{
 struct stmp3xxx_pinmux_bank *pm;
 unsigned gpio;

 stmp3xxx_irq_to_gpio(irq, &pm, &gpio);
 stmp3xxx_clearl(1 << gpio, pm->irqen);
 stmp3xxx_clearl(1 << gpio, pm->pin2irq);
}
