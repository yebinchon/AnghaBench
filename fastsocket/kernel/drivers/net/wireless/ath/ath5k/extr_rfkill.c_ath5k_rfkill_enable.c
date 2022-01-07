
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int polarity; int gpio; } ;
struct ath5k_hw {TYPE_1__ rf_kill; } ;


 int ATH5K_DBG (struct ath5k_hw*,int ,char*,int ,int ) ;
 int ATH5K_DEBUG_ANY ;
 int ath5k_hw_set_gpio (struct ath5k_hw*,int ,int ) ;
 int ath5k_hw_set_gpio_output (struct ath5k_hw*,int ) ;

__attribute__((used)) static inline void ath5k_rfkill_enable(struct ath5k_hw *ah)
{
 ATH5K_DBG(ah, ATH5K_DEBUG_ANY, "rfkill enable (gpio:%d polarity:%d)\n",
  ah->rf_kill.gpio, ah->rf_kill.polarity);
 ath5k_hw_set_gpio_output(ah, ah->rf_kill.gpio);
 ath5k_hw_set_gpio(ah, ah->rf_kill.gpio, ah->rf_kill.polarity);
}
