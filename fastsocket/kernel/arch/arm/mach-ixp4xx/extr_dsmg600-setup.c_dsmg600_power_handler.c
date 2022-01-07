
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSMG600_LED_PWR_GPIO ;
 int DSMG600_PB_GPIO ;
 int IXP4XX_GPIO_LOW ;
 scalar_t__ PBUTTON_HOLDDOWN_COUNT ;
 int ctrl_alt_del () ;
 int dsmg600_power_timer ;
 scalar_t__ gpio_get_value (int ) ;
 int gpio_line_set (int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 scalar_t__ power_button_countdown ;

__attribute__((used)) static void dsmg600_power_handler(unsigned long data)
{




 if (gpio_get_value(DSMG600_PB_GPIO)) {


  if (power_button_countdown > 0)
   power_button_countdown--;

 } else {


  if (power_button_countdown == 0) {




   ctrl_alt_del();


   gpio_line_set(DSMG600_LED_PWR_GPIO, IXP4XX_GPIO_LOW);
  } else {
   power_button_countdown = PBUTTON_HOLDDOWN_COUNT;
  }
 }

 mod_timer(&dsmg600_power_timer, jiffies + msecs_to_jiffies(500));
}
