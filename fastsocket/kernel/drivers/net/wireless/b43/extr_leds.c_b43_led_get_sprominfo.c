
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct b43_wldev {TYPE_2__* dev; } ;
typedef enum b43_led_behaviour { ____Placeholder_b43_led_behaviour } b43_led_behaviour ;
struct TYPE_4__ {int board_vendor; TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int gpio0; int gpio1; int gpio2; int gpio3; } ;


 int B43_LED_ACTIVELOW ;
 int B43_LED_ACTIVITY ;
 int B43_LED_ASSOC ;
 int B43_LED_BEHAVIOUR ;
 int B43_LED_OFF ;
 int B43_LED_RADIO_A ;
 int B43_LED_RADIO_ALL ;
 int B43_LED_RADIO_B ;
 int B43_WARN_ON (int) ;
 int PCI_VENDOR_ID_ASUSTEK ;
 int PCI_VENDOR_ID_COMPAQ ;

__attribute__((used)) static void b43_led_get_sprominfo(struct b43_wldev *dev,
      unsigned int led_index,
      enum b43_led_behaviour *behaviour,
      bool *activelow)
{
 u8 sprom[4];

 sprom[0] = dev->dev->bus_sprom->gpio0;
 sprom[1] = dev->dev->bus_sprom->gpio1;
 sprom[2] = dev->dev->bus_sprom->gpio2;
 sprom[3] = dev->dev->bus_sprom->gpio3;

 if (sprom[led_index] == 0xFF) {


  *activelow = 0;
  switch (led_index) {
  case 0:
   *behaviour = B43_LED_ACTIVITY;
   *activelow = 1;
   if (dev->dev->board_vendor == PCI_VENDOR_ID_COMPAQ)
    *behaviour = B43_LED_RADIO_ALL;
   break;
  case 1:
   *behaviour = B43_LED_RADIO_B;
   if (dev->dev->board_vendor == PCI_VENDOR_ID_ASUSTEK)
    *behaviour = B43_LED_ASSOC;
   break;
  case 2:
   *behaviour = B43_LED_RADIO_A;
   break;
  case 3:
   *behaviour = B43_LED_OFF;
   break;
  default:
   *behaviour = B43_LED_OFF;
   B43_WARN_ON(1);
   return;
  }
 } else {
  *behaviour = sprom[led_index] & B43_LED_BEHAVIOUR;
  *activelow = !!(sprom[led_index] & B43_LED_ACTIVELOW);
 }
}
