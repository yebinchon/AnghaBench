
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MCFINTC2_GPIOIRQ0 ;
 scalar_t__ MCFSIM2_GPIOINTCLEAR ;
 scalar_t__ MCF_MBAR2 ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void intc2_irq_gpio_ack(unsigned int irq)
{
 writel(0x1 << (irq - MCFINTC2_GPIOIRQ0), MCF_MBAR2 + MCFSIM2_GPIOINTCLEAR);
}
