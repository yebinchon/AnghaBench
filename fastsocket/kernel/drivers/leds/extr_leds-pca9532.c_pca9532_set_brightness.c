
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca9532_led {int work; int client; int state; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_FULL ;
 int LED_OFF ;
 int PCA9532_OFF ;
 int PCA9532_ON ;
 int PCA9532_PWM0 ;
 struct pca9532_led* ldev_to_led (struct led_classdev*) ;
 int pca9532_calcpwm (int ,int ,int ,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static void pca9532_set_brightness(struct led_classdev *led_cdev,
 enum led_brightness value)
{
 int err = 0;
 struct pca9532_led *led = ldev_to_led(led_cdev);

 if (value == LED_OFF)
  led->state = PCA9532_OFF;
 else if (value == LED_FULL)
  led->state = PCA9532_ON;
 else {
  led->state = PCA9532_PWM0;
  err = pca9532_calcpwm(led->client, 0, 0, value);
  if (err)
   return;
 }
 schedule_work(&led->work);
}
