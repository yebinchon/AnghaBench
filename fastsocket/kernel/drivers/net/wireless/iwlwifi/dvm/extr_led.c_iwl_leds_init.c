
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int max_brightness; int name; int default_trigger; int blink_set; int brightness_set; } ;
struct iwl_priv {int led_registered; TYPE_3__ led; TYPE_2__* trans; TYPE_5__* hw; TYPE_1__* cfg; } ;
struct TYPE_11__ {int wiphy; } ;
struct TYPE_10__ {int led_mode; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int led_mode; } ;


 int ARRAY_SIZE (int ) ;
 int GFP_KERNEL ;
 int IEEE80211_TPT_LEDTRIG_FL_CONNECTED ;
 int IWL_INFO (struct iwl_priv*,char*) ;


 int IWL_LED_DISABLE ;

 int WARN_ON (int) ;
 int ieee80211_create_tpt_led_trigger (TYPE_5__*,int ,int ,int ) ;
 int ieee80211_get_radio_led_name (TYPE_5__*) ;
 int iwl_blink ;
 int iwl_led_blink_set ;
 int iwl_led_brightness_set ;
 TYPE_4__ iwlwifi_mod_params ;
 int kasprintf (int ,char*,int ) ;
 int kfree (int ) ;
 int led_classdev_register (int ,TYPE_3__*) ;
 int wiphy_name (int ) ;

void iwl_leds_init(struct iwl_priv *priv)
{
 int mode = iwlwifi_mod_params.led_mode;
 int ret;

 if (mode == IWL_LED_DISABLE) {
  IWL_INFO(priv, "Led disabled\n");
  return;
 }
 if (mode == 129)
  mode = priv->cfg->led_mode;

 priv->led.name = kasprintf(GFP_KERNEL, "%s-led",
       wiphy_name(priv->hw->wiphy));
 priv->led.brightness_set = iwl_led_brightness_set;
 priv->led.blink_set = iwl_led_blink_set;
 priv->led.max_brightness = 1;

 switch (mode) {
 case 129:
  WARN_ON(1);
  break;
 case 130:
  priv->led.default_trigger =
   ieee80211_create_tpt_led_trigger(priv->hw,
     IEEE80211_TPT_LEDTRIG_FL_CONNECTED,
     iwl_blink, ARRAY_SIZE(iwl_blink));
  break;
 case 128:
  priv->led.default_trigger =
   ieee80211_get_radio_led_name(priv->hw);
  break;
 }

 ret = led_classdev_register(priv->trans->dev, &priv->led);
 if (ret) {
  kfree(priv->led.name);
  return;
 }

 priv->led_registered = 1;
}
