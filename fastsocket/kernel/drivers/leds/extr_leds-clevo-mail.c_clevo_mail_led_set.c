
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int CLEVO_MAIL_LED_BLINK_0_5HZ ;
 int CLEVO_MAIL_LED_BLINK_1HZ ;
 int CLEVO_MAIL_LED_OFF ;
 int LED_HALF ;
 int LED_OFF ;
 int i8042_command (int *,int ) ;
 int i8042_lock_chip () ;
 int i8042_unlock_chip () ;

__attribute__((used)) static void clevo_mail_led_set(struct led_classdev *led_cdev,
    enum led_brightness value)
{
 i8042_lock_chip();

 if (value == LED_OFF)
  i8042_command(((void*)0), CLEVO_MAIL_LED_OFF);
 else if (value <= LED_HALF)
  i8042_command(((void*)0), CLEVO_MAIL_LED_BLINK_0_5HZ);
 else
  i8042_command(((void*)0), CLEVO_MAIL_LED_BLINK_1HZ);

 i8042_unlock_chip();

}
