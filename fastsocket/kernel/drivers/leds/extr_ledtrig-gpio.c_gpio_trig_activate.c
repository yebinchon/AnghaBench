
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dev; struct gpio_trig_data* trigger_data; } ;
struct gpio_trig_data {int work; struct led_classdev* led; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int dev_attr_desired_brightness ;
 int dev_attr_gpio ;
 int dev_attr_inverted ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int gpio_trig_work ;
 int kfree (struct gpio_trig_data*) ;
 struct gpio_trig_data* kzalloc (int,int ) ;

__attribute__((used)) static void gpio_trig_activate(struct led_classdev *led)
{
 struct gpio_trig_data *gpio_data;
 int ret;

 gpio_data = kzalloc(sizeof(*gpio_data), GFP_KERNEL);
 if (!gpio_data)
  return;

 ret = device_create_file(led->dev, &dev_attr_gpio);
 if (ret)
  goto err_gpio;

 ret = device_create_file(led->dev, &dev_attr_inverted);
 if (ret)
  goto err_inverted;

 ret = device_create_file(led->dev, &dev_attr_desired_brightness);
 if (ret)
  goto err_brightness;

 gpio_data->led = led;
 led->trigger_data = gpio_data;
 INIT_WORK(&gpio_data->work, gpio_trig_work);

 return;

err_brightness:
 device_remove_file(led->dev, &dev_attr_inverted);

err_inverted:
 device_remove_file(led->dev, &dev_attr_gpio);

err_gpio:
 kfree(gpio_data);
}
