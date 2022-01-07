
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ S6_GPIO_AFSEL ;
 scalar_t__ S6_GPIO_BANK (int) ;
 scalar_t__ S6_REG_GPIO ;
 int gpiochip ;
 int gpiochip_add (int *) ;
 int writeb (int,scalar_t__) ;

int s6_gpio_init(u32 afsel)
{
 writeb(afsel, S6_REG_GPIO + S6_GPIO_BANK(0) + S6_GPIO_AFSEL);
 writeb(afsel >> 8, S6_REG_GPIO + S6_GPIO_BANK(1) + S6_GPIO_AFSEL);
 writeb(afsel >> 16, S6_REG_GPIO + S6_GPIO_BANK(2) + S6_GPIO_AFSEL);
 return gpiochip_add(&gpiochip);
}
