
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmp3xxx_pinmux_bank {int irqstat; } ;


 int __raw_readl (int ) ;
 int stmp3xxx_clearl (int,int ) ;
 int stmp3xxx_irq_to_gpio (unsigned int,struct stmp3xxx_pinmux_bank**,unsigned int*) ;

__attribute__((used)) static void stmp3xxx_pin_ack_irq(unsigned irq)
{
 u32 stat;
 struct stmp3xxx_pinmux_bank *pm;
 unsigned gpio;

 stmp3xxx_irq_to_gpio(irq, &pm, &gpio);
 stat = __raw_readl(pm->irqstat) & (1 << gpio);
 stmp3xxx_clearl(stat, pm->irqstat);
}
