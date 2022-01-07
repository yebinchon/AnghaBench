
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;



__attribute__((used)) static int gpio_irq_type(unsigned pin, unsigned type)
{
 switch (type) {
 case 128:
 case 129:
  return 0;
 default:
  return -EINVAL;
 }
}
