
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {struct gpio_trig_data* trigger_data; } ;
struct gpio_trig_data {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t gpio_trig_irq(int irq, void *_led)
{
 struct led_classdev *led = _led;
 struct gpio_trig_data *gpio_data = led->trigger_data;


 schedule_work(&gpio_data->work);

 return IRQ_HANDLED;
}
