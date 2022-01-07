
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int H1940_LATCH_LED_FLASH ;
 int S3C2410_GPA3 ;
 int h1940_latch_control (int ,int ) ;
 int s3c2410_gpio_setpin (int ,int) ;

__attribute__((used)) static void h1940_blueled_set(struct led_classdev *led_dev,
         enum led_brightness value)
{
 if (value) {

  h1940_latch_control(0, H1940_LATCH_LED_FLASH);
  s3c2410_gpio_setpin(S3C2410_GPA3, 1);
 } else {
  h1940_latch_control(H1940_LATCH_LED_FLASH, 0);
  s3c2410_gpio_setpin(S3C2410_GPA3, 0);
 }

}
