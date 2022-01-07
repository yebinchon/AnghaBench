
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_RETVAL (int ) ;
 unsigned long* R_IRQ_MASK1_CLR ;
 unsigned long* R_IRQ_READ1 ;
 int etrax_gpio_wake_up_check () ;
 int gpio_lock ;
 unsigned long gpio_pa_irq_enabled_mask ;
 scalar_t__ gpio_some_alarms ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t
gpio_interrupt(int irq, void *dev_id)
{
 unsigned long tmp;
 unsigned long flags;

 spin_lock_irqsave(&gpio_lock, flags);


 tmp = (*R_IRQ_READ1);


 tmp &= gpio_pa_irq_enabled_mask;


 *R_IRQ_MASK1_CLR = tmp;
 gpio_pa_irq_enabled_mask &= ~tmp;

 spin_unlock_irqrestore(&gpio_lock, flags);

 if (gpio_some_alarms)
  return IRQ_RETVAL(etrax_gpio_wake_up_check());

        return IRQ_NONE;
}
