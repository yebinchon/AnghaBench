
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dev; struct gpio_trig_data* trigger_data; } ;
struct gpio_trig_data {scalar_t__ gpio; int work; } ;


 int dev_attr_desired_brightness ;
 int dev_attr_gpio ;
 int dev_attr_inverted ;
 int device_remove_file (int ,int *) ;
 int flush_work (int *) ;
 int free_irq (int ,struct led_classdev*) ;
 int gpio_to_irq (scalar_t__) ;
 int kfree (struct gpio_trig_data*) ;

__attribute__((used)) static void gpio_trig_deactivate(struct led_classdev *led)
{
 struct gpio_trig_data *gpio_data = led->trigger_data;

 if (gpio_data) {
  device_remove_file(led->dev, &dev_attr_gpio);
  device_remove_file(led->dev, &dev_attr_inverted);
  device_remove_file(led->dev, &dev_attr_desired_brightness);
  flush_work(&gpio_data->work);
  if (gpio_data->gpio != 0)
   free_irq(gpio_to_irq(gpio_data->gpio), led);
  kfree(gpio_data);
 }
}
