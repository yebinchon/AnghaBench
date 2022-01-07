
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORGI_GPIO_ADC_TEMP_ON ;
 int CORGI_GPIO_CHRG_ON ;
 int CORGI_GPIO_CHRG_UKN ;
 int CORGI_GPIO_KEY_INT ;
 int GPIO_IN ;
 int GPIO_OUT ;
 int pxa_gpio_mode (int) ;

__attribute__((used)) static void corgi_charger_init(void)
{
 pxa_gpio_mode(CORGI_GPIO_ADC_TEMP_ON | GPIO_OUT);
 pxa_gpio_mode(CORGI_GPIO_CHRG_ON | GPIO_OUT);
 pxa_gpio_mode(CORGI_GPIO_CHRG_UKN | GPIO_OUT);
 pxa_gpio_mode(CORGI_GPIO_KEY_INT | GPIO_IN);
}
