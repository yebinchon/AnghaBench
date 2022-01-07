
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int GPIO_MAPPED_IRQ_BASE ;
 int GPIO_MAPPED_IRQ_GROUP ;
 int GROUP4_IRQ_BASE ;


 int irq_to_group (unsigned int) ;
 int rb532_gpio_set_ilevel (int,int) ;

__attribute__((used)) static int rb532_set_type(unsigned int irq_nr, unsigned type)
{
 int gpio = irq_nr - GPIO_MAPPED_IRQ_BASE;
 int group = irq_to_group(irq_nr);

 if (group != GPIO_MAPPED_IRQ_GROUP || irq_nr > (GROUP4_IRQ_BASE + 13))
  return (type == 129) ? 0 : -EINVAL;

 switch (type) {
 case 129:
  rb532_gpio_set_ilevel(1, gpio);
  break;
 case 128:
  rb532_gpio_set_ilevel(0, gpio);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
