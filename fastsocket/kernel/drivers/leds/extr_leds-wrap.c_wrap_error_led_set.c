
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int WRAP_ERROR_LED_GPIO ;
 int scx200_gpio_set_high (int ) ;
 int scx200_gpio_set_low (int ) ;

__attribute__((used)) static void wrap_error_led_set(struct led_classdev *led_cdev,
  enum led_brightness value)
{
 if (value)
  scx200_gpio_set_low(WRAP_ERROR_LED_GPIO);
 else
  scx200_gpio_set_high(WRAP_ERROR_LED_GPIO);
}
