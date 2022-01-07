
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int MCFINTC2_GPIOIRQ0 ;
 scalar_t__ MCFSIM2_GPIOINTENABLE ;
 scalar_t__ MCF_MBAR2 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void intc2_irq_gpio_unmask(unsigned int irq)
{
 u32 imr;
 imr = readl(MCF_MBAR2 + MCFSIM2_GPIOINTENABLE);
 imr |= (0x1 << (irq - MCFINTC2_GPIOIRQ0));
 writel(imr, MCF_MBAR2 + MCFSIM2_GPIOINTENABLE);
}
