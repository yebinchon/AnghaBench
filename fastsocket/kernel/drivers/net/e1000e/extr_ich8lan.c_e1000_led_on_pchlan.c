
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int ledctl_mode2; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int E1000_LEDCTL_MODE_LINK_UP ;
 int E1000_PHY_LED0_IVRT ;
 int E1000_PHY_LED0_MASK ;
 int E1000_PHY_LED0_MODE_MASK ;
 int E1000_STATUS_LU ;
 int HV_LED_CONFIG ;
 int STATUS ;
 int e1e_wphy (struct e1000_hw*,int ,int) ;
 int er32 (int ) ;

__attribute__((used)) static s32 e1000_led_on_pchlan(struct e1000_hw *hw)
{
 u16 data = (u16)hw->mac.ledctl_mode2;
 u32 i, led;




 if (!(er32(STATUS) & E1000_STATUS_LU)) {
  for (i = 0; i < 3; i++) {
   led = (data >> (i * 5)) & E1000_PHY_LED0_MASK;
   if ((led & E1000_PHY_LED0_MODE_MASK) !=
       E1000_LEDCTL_MODE_LINK_UP)
    continue;
   if (led & E1000_PHY_LED0_IVRT)
    data &= ~(E1000_PHY_LED0_IVRT << (i * 5));
   else
    data |= (E1000_PHY_LED0_IVRT << (i * 5));
  }
 }

 return e1e_wphy(hw, HV_LED_CONFIG, data);
}
