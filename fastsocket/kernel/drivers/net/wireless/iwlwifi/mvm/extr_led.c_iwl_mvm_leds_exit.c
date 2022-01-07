
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct iwl_mvm {TYPE_1__ led; } ;
struct TYPE_4__ {scalar_t__ led_mode; } ;


 scalar_t__ IWL_LED_DISABLE ;
 TYPE_2__ iwlwifi_mod_params ;
 int kfree (int ) ;
 int led_classdev_unregister (TYPE_1__*) ;

void iwl_mvm_leds_exit(struct iwl_mvm *mvm)
{
 if (iwlwifi_mod_params.led_mode == IWL_LED_DISABLE)
  return;

 led_classdev_unregister(&mvm->led);
 kfree(mvm->led.name);
}
