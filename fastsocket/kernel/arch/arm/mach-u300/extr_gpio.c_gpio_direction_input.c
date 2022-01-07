
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int EINVAL ;
 int PIN_TO_PORT (unsigned int) ;
 unsigned int U300_GPIO_MAX ;
 int U300_GPIO_PORTX_SPACING ;
 scalar_t__ U300_GPIO_PXPCR ;
 unsigned int U300_GPIO_PXPCR_PIN_MODE_MASK ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned int readl (scalar_t__) ;
 scalar_t__ virtbase ;
 int writel (unsigned int,scalar_t__) ;

int gpio_direction_input(unsigned gpio)
{
 unsigned long flags;
 u32 val;

 if (gpio > U300_GPIO_MAX)
  return -EINVAL;

 local_irq_save(flags);
 val = readl(virtbase + U300_GPIO_PXPCR + PIN_TO_PORT(gpio) *
    U300_GPIO_PORTX_SPACING);

 val &= ~(U300_GPIO_PXPCR_PIN_MODE_MASK << ((gpio & 0x07) << 1));


 writel(val, virtbase + U300_GPIO_PXPCR + PIN_TO_PORT(gpio) *
    U300_GPIO_PORTX_SPACING);
 local_irq_restore(flags);
 return 0;
}
