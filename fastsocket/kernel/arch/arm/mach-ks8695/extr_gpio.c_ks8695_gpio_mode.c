
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IOPC_IOEINT0EN ;
 unsigned int IOPC_IOEINT1EN ;
 unsigned int IOPC_IOEINT2EN ;
 unsigned int IOPC_IOEINT3EN ;
 unsigned int IOPC_IOTIM0EN ;
 unsigned int IOPC_IOTIM1EN ;
 unsigned int KS8695_GPIO_5 ;
 scalar_t__ KS8695_GPIO_VA ;
 scalar_t__ KS8695_IOPC ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void ks8695_gpio_mode(unsigned int pin, short gpio)
{
 unsigned int enable[] = { IOPC_IOEINT0EN, IOPC_IOEINT1EN, IOPC_IOEINT2EN, IOPC_IOEINT3EN, IOPC_IOTIM0EN, IOPC_IOTIM1EN };
 unsigned long x, flags;

 if (pin > KS8695_GPIO_5)
  return;

 local_irq_save(flags);

 x = __raw_readl(KS8695_GPIO_VA + KS8695_IOPC);
 if (gpio)
  x &= ~enable[pin];
 else
  x |= enable[pin];
 __raw_writel(x, KS8695_GPIO_VA + KS8695_IOPC);

 local_irq_restore(flags);
}
