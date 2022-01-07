
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_keys_button {scalar_t__ debounce_interval; int gpio; } ;
struct gpio_button_data {int work; int timer; struct gpio_keys_button* button; } ;
typedef int irqreturn_t ;


 int BUG_ON (int) ;
 int IRQ_HANDLED ;
 int gpio_to_irq (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t gpio_keys_isr(int irq, void *dev_id)
{
 struct gpio_button_data *bdata = dev_id;
 struct gpio_keys_button *button = bdata->button;

 BUG_ON(irq != gpio_to_irq(button->gpio));

 if (button->debounce_interval)
  mod_timer(&bdata->timer,
   jiffies + msecs_to_jiffies(button->debounce_interval));
 else
  schedule_work(&bdata->work);

 return IRQ_HANDLED;
}
