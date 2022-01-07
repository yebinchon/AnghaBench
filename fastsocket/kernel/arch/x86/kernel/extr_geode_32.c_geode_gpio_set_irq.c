
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_PIC_ZSEL_HIGH ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

void geode_gpio_set_irq(unsigned int group, unsigned int irq)
{
 u32 lo, hi;

 if (group > 7 || irq > 15)
  return;

 rdmsr(MSR_PIC_ZSEL_HIGH, lo, hi);

 lo &= ~(0xF << (group * 4));
 lo |= (irq & 0xF) << (group * 4);

 wrmsr(MSR_PIC_ZSEL_HIGH, lo, hi);
}
