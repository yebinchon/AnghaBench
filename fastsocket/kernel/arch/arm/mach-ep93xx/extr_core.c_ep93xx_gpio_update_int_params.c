
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int EP93XX_GPIO_REG (int ) ;
 int __raw_writeb (int,int ) ;
 int* gpio_int_enabled ;
 int* gpio_int_type1 ;
 int* gpio_int_type2 ;
 int* gpio_int_unmasked ;
 int * int_en_register_offset ;
 int * int_type1_register_offset ;
 int * int_type2_register_offset ;

void ep93xx_gpio_update_int_params(unsigned port)
{
 BUG_ON(port > 2);

 __raw_writeb(0, EP93XX_GPIO_REG(int_en_register_offset[port]));

 __raw_writeb(gpio_int_type2[port],
  EP93XX_GPIO_REG(int_type2_register_offset[port]));

 __raw_writeb(gpio_int_type1[port],
  EP93XX_GPIO_REG(int_type1_register_offset[port]));

 __raw_writeb(gpio_int_unmasked[port] & gpio_int_enabled[port],
  EP93XX_GPIO_REG(int_en_register_offset[port]));
}
