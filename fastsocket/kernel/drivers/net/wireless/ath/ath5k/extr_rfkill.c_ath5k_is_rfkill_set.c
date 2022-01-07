
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ polarity; int gpio; } ;
struct ath5k_hw {TYPE_1__ rf_kill; } ;


 scalar_t__ ath5k_hw_get_gpio (struct ath5k_hw*,int ) ;

__attribute__((used)) static bool
ath5k_is_rfkill_set(struct ath5k_hw *ah)
{


 return ath5k_hw_get_gpio(ah, ah->rf_kill.gpio) ==
       ah->rf_kill.polarity;
}
