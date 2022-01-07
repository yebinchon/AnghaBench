
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_IN ;
 int SPITZ_GPIO_KEY_INT ;
 int SPITZ_GPIO_SYNC ;
 int pxa_gpio_mode (int) ;

__attribute__((used)) static void spitz_charger_init(void)
{
 pxa_gpio_mode(SPITZ_GPIO_KEY_INT | GPIO_IN);
 pxa_gpio_mode(SPITZ_GPIO_SYNC | GPIO_IN);
}
