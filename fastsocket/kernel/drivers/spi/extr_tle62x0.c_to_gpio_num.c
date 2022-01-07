
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;


 int ARRAY_SIZE (struct device_attribute**) ;
 struct device_attribute** gpio_attrs ;

__attribute__((used)) static int to_gpio_num(struct device_attribute *attr)
{
 int ptr;

 for (ptr = 0; ptr < ARRAY_SIZE(gpio_attrs); ptr++) {
  if (gpio_attrs[ptr] == attr)
   return ptr;
 }

 return -1;
}
