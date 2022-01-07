
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT32_GPIOF_PULLUP ;
 int GPIO_PIN_PA (int) ;
 int at32_select_gpio (int ,int ) ;
 int gpio_get_value (int ) ;
 int merisc_board_id ;

__attribute__((used)) static void detect_merisc_board_id(void)
{

 at32_select_gpio(GPIO_PIN_PA(24), AT32_GPIOF_PULLUP);
 at32_select_gpio(GPIO_PIN_PA(25), AT32_GPIOF_PULLUP);
 at32_select_gpio(GPIO_PIN_PA(26), AT32_GPIOF_PULLUP);
 at32_select_gpio(GPIO_PIN_PA(27), AT32_GPIOF_PULLUP);

 merisc_board_id = !gpio_get_value(GPIO_PIN_PA(24)) +
  !gpio_get_value(GPIO_PIN_PA(25)) * 2 +
  !gpio_get_value(GPIO_PIN_PA(26)) * 4 +
  !gpio_get_value(GPIO_PIN_PA(27)) * 8;
}
