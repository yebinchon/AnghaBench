
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct davinci_soc_info {unsigned int gpio_unbanked; int gpio_irq; } ;


 int ENODEV ;
 struct davinci_soc_info davinci_soc_info ;

__attribute__((used)) static int gpio_to_irq_unbanked(struct gpio_chip *chip, unsigned offset)
{
 struct davinci_soc_info *soc_info = &davinci_soc_info;




 if (offset < soc_info->gpio_unbanked)
  return soc_info->gpio_irq + offset;
 else
  return -ENODEV;
}
