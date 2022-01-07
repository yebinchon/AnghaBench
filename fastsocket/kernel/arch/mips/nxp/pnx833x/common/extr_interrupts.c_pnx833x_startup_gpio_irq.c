
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PNX833X_GPIO_IRQ_BASE ;
 int pnx833x_gpio_enable_irq (int) ;
 int pnx833x_gpio_pnx833x_irq_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int pnx833x_startup_gpio_irq(unsigned int irq)
{
 int pin = irq - PNX833X_GPIO_IRQ_BASE;
 unsigned long flags;
 spin_lock_irqsave(&pnx833x_gpio_pnx833x_irq_lock, flags);
 pnx833x_gpio_enable_irq(pin);
 spin_unlock_irqrestore(&pnx833x_gpio_pnx833x_irq_lock, flags);
 return 0;
}
