
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_gpio_config {int PullUpDown; int OutputSlewRate; int OutputDriving; int InputCharacteristics; int Direction; } ;


 int SMS_GPIO_DIRECTION_OUTPUT ;
 int SMS_GPIO_INPUT_CHARACTERISTICS_NORMAL ;
 int SMS_GPIO_OUTPUT_DRIVING_4mA ;
 int SMS_GPIO_OUTPUT_SLEW_RATE_0_45_V_NS ;
 int SMS_GPIO_PULL_UP_DOWN_NONE ;

__attribute__((used)) static inline void sms_gpio_assign_11xx_default_led_config(
  struct smscore_gpio_config *pGpioConfig) {
 pGpioConfig->Direction = SMS_GPIO_DIRECTION_OUTPUT;
 pGpioConfig->InputCharacteristics =
  SMS_GPIO_INPUT_CHARACTERISTICS_NORMAL;
 pGpioConfig->OutputDriving = SMS_GPIO_OUTPUT_DRIVING_4mA;
 pGpioConfig->OutputSlewRate = SMS_GPIO_OUTPUT_SLEW_RATE_0_45_V_NS;
 pGpioConfig->PullUpDown = SMS_GPIO_PULL_UP_DOWN_NONE;
}
