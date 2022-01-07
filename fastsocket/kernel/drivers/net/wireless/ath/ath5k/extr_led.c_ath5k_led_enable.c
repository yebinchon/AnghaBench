
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int led_pin; int status; } ;


 int ATH_STAT_LEDSOFT ;
 int ath5k_hw_set_gpio_output (struct ath5k_hw*,int ) ;
 int ath5k_led_off (struct ath5k_hw*) ;
 scalar_t__ test_bit (int ,int ) ;

void ath5k_led_enable(struct ath5k_hw *ah)
{
 if (test_bit(ATH_STAT_LEDSOFT, ah->status)) {
  ath5k_hw_set_gpio_output(ah, ah->led_pin);
  ath5k_led_off(ah);
 }
}
