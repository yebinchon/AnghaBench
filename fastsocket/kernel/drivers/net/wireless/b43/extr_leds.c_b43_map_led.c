
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_hw {int wiphy; } ;
struct b43_wldev {TYPE_2__* wl; } ;
typedef int name ;
typedef enum b43_led_behaviour { ____Placeholder_b43_led_behaviour } b43_led_behaviour ;
struct TYPE_3__ {int led_assoc; int led_radio; int led_rx; int led_tx; } ;
struct TYPE_4__ {TYPE_1__ leds; struct ieee80211_hw* hw; } ;






 int B43_LED_MAX_NAME_LEN ;
 int b43_register_led (struct b43_wldev*,int *,char*,int ,int ,int) ;
 int b43warn (TYPE_2__*,char*,int) ;
 int ieee80211_get_assoc_led_name (struct ieee80211_hw*) ;
 int ieee80211_get_radio_led_name (struct ieee80211_hw*) ;
 int ieee80211_get_rx_led_name (struct ieee80211_hw*) ;
 int ieee80211_get_tx_led_name (struct ieee80211_hw*) ;
 int snprintf (char*,int,char*,char*) ;
 char* wiphy_name (int ) ;

__attribute__((used)) static void b43_map_led(struct b43_wldev *dev,
   u8 led_index,
   enum b43_led_behaviour behaviour,
   bool activelow)
{
 struct ieee80211_hw *hw = dev->wl->hw;
 char name[B43_LED_MAX_NAME_LEN + 1];



 switch (behaviour) {
 case 136:
 case 134:
 case 133:
  break;
 case 139:
 case 129:
 case 138:
  snprintf(name, sizeof(name),
    "b43-%s::tx", wiphy_name(hw->wiphy));
  b43_register_led(dev, &dev->wl->leds.led_tx, name,
     ieee80211_get_tx_led_name(hw),
     led_index, activelow);
  snprintf(name, sizeof(name),
    "b43-%s::rx", wiphy_name(hw->wiphy));
  b43_register_led(dev, &dev->wl->leds.led_rx, name,
     ieee80211_get_rx_led_name(hw),
     led_index, activelow);
  break;
 case 131:
 case 132:
 case 130:
 case 135:
  snprintf(name, sizeof(name),
    "b43-%s::radio", wiphy_name(hw->wiphy));
  b43_register_led(dev, &dev->wl->leds.led_radio, name,
     ieee80211_get_radio_led_name(hw),
     led_index, activelow);
  break;
 case 128:
 case 137:
  snprintf(name, sizeof(name),
    "b43-%s::assoc", wiphy_name(hw->wiphy));
  b43_register_led(dev, &dev->wl->leds.led_assoc, name,
     ieee80211_get_assoc_led_name(hw),
     led_index, activelow);
  break;
 default:
  b43warn(dev->wl, "LEDs: Unknown behaviour 0x%02X\n",
   behaviour);
  break;
 }
}
