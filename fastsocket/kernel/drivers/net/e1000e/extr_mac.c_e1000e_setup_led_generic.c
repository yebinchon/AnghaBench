
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ setup_led; } ;
struct TYPE_6__ {int ledctl_default; int ledctl_mode1; TYPE_1__ ops; } ;
struct TYPE_5__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ phy; } ;
typedef int s32 ;


 int E1000_ERR_CONFIG ;
 int E1000_LEDCTL_LED0_BLINK ;
 int E1000_LEDCTL_LED0_IVRT ;
 int E1000_LEDCTL_LED0_MODE_MASK ;
 int E1000_LEDCTL_LED0_MODE_SHIFT ;
 int E1000_LEDCTL_MODE_LED_OFF ;
 int LEDCTL ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_fiber ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

s32 e1000e_setup_led_generic(struct e1000_hw *hw)
{
 u32 ledctl;

 if (hw->mac.ops.setup_led != e1000e_setup_led_generic)
  return -E1000_ERR_CONFIG;

 if (hw->phy.media_type == e1000_media_type_fiber) {
  ledctl = er32(LEDCTL);
  hw->mac.ledctl_default = ledctl;

  ledctl &= ~(E1000_LEDCTL_LED0_IVRT | E1000_LEDCTL_LED0_BLINK |
       E1000_LEDCTL_LED0_MODE_MASK);
  ledctl |= (E1000_LEDCTL_MODE_LED_OFF <<
      E1000_LEDCTL_LED0_MODE_SHIFT);
  ew32(LEDCTL, ledctl);
 } else if (hw->phy.media_type == e1000_media_type_copper) {
  ew32(LEDCTL, hw->mac.ledctl_mode1);
 }

 return 0;
}
