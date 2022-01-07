
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bat_work ;
 int gpio_get_value (int ) ;
 int irq_to_gpio (int) ;
 int pr_info (char*,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t tosa_bat_gpio_isr(int irq, void *data)
{
 pr_info("tosa_bat_gpio irq: %d\n", gpio_get_value(irq_to_gpio(irq)));
 schedule_work(&bat_work);
 return IRQ_HANDLED;
}
