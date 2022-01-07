
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int hw; int led_work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int ieee80211_get_assoc_led_name (int ) ;
 int ieee80211_get_radio_led_name (int ) ;
 int ieee80211_get_rx_led_name (int ) ;
 int ieee80211_get_tx_led_name (int ) ;
 int p54_register_led (struct p54_common*,int,char*,int ) ;
 int p54_set_leds (struct p54_common*) ;
 int p54_update_leds ;

int p54_init_leds(struct p54_common *priv)
{
 int err;







 INIT_DELAYED_WORK(&priv->led_work, p54_update_leds);

 err = p54_register_led(priv, 0, "assoc",
          ieee80211_get_assoc_led_name(priv->hw));
 if (err)
  return err;

 err = p54_register_led(priv, 1, "tx",
          ieee80211_get_tx_led_name(priv->hw));
 if (err)
  return err;

 err = p54_register_led(priv, 2, "rx",
          ieee80211_get_rx_led_name(priv->hw));
 if (err)
  return err;

 err = p54_register_led(priv, 3, "radio",
          ieee80211_get_radio_led_name(priv->hw));
 if (err)
  return err;

 err = p54_set_leds(priv);
 return err;
}
