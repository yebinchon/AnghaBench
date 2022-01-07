
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AR7_GPIO_MAX ;
 int EBUSY ;
 int EINVAL ;
 char const** ar7_gpio_list ;

int gpio_request(unsigned gpio, const char *label)
{
 if (gpio >= AR7_GPIO_MAX)
  return -EINVAL;

 if (ar7_gpio_list[gpio])
  return -EBUSY;

 if (label)
  ar7_gpio_list[gpio] = label;
 else
  ar7_gpio_list[gpio] = "busy";

 return 0;
}
