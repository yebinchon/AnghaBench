
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {scalar_t__ mac_type; int ledctl_default; int ledctl_mode1; int ledctl_mode2; } ;
typedef int s32 ;


 int E1000_ERR_EEPROM ;
 int E1000_LEDCTL_MODE_LED_OFF ;
 int E1000_LEDCTL_MODE_LED_ON ;
 int E1000_SUCCESS ;
 int EEPROM_ID_LED_SETTINGS ;


 int ID_LED_DEFAULT ;






 int ID_LED_RESERVED_0000 ;
 int ID_LED_RESERVED_FFFF ;
 int LEDCTL ;
 scalar_t__ e1000_82540 ;
 scalar_t__ e1000_read_eeprom (struct e1000_hw*,int ,int,int*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;

__attribute__((used)) static s32 e1000_id_led_init(struct e1000_hw *hw)
{
 u32 ledctl;
 const u32 ledctl_mask = 0x000000FF;
 const u32 ledctl_on = E1000_LEDCTL_MODE_LED_ON;
 const u32 ledctl_off = E1000_LEDCTL_MODE_LED_OFF;
 u16 eeprom_data, i, temp;
 const u16 led_mask = 0x0F;

 e_dbg("e1000_id_led_init");

 if (hw->mac_type < e1000_82540) {

  return E1000_SUCCESS;
 }

 ledctl = er32(LEDCTL);
 hw->ledctl_default = ledctl;
 hw->ledctl_mode1 = hw->ledctl_default;
 hw->ledctl_mode2 = hw->ledctl_default;

 if (e1000_read_eeprom(hw, EEPROM_ID_LED_SETTINGS, 1, &eeprom_data) < 0) {
  e_dbg("EEPROM Read Error\n");
  return -E1000_ERR_EEPROM;
 }

 if ((eeprom_data == ID_LED_RESERVED_0000) ||
     (eeprom_data == ID_LED_RESERVED_FFFF)) {
  eeprom_data = ID_LED_DEFAULT;
 }

 for (i = 0; i < 4; i++) {
  temp = (eeprom_data >> (i << 2)) & led_mask;
  switch (temp) {
  case 130:
  case 128:
  case 129:
   hw->ledctl_mode1 &= ~(ledctl_mask << (i << 3));
   hw->ledctl_mode1 |= ledctl_on << (i << 3);
   break;
  case 133:
  case 131:
  case 132:
   hw->ledctl_mode1 &= ~(ledctl_mask << (i << 3));
   hw->ledctl_mode1 |= ledctl_off << (i << 3);
   break;
  default:

   break;
  }
  switch (temp) {
  case 134:
  case 128:
  case 131:
   hw->ledctl_mode2 &= ~(ledctl_mask << (i << 3));
   hw->ledctl_mode2 |= ledctl_on << (i << 3);
   break;
  case 135:
  case 129:
  case 132:
   hw->ledctl_mode2 &= ~(ledctl_mask << (i << 3));
   hw->ledctl_mode2 |= ledctl_off << (i << 3);
   break;
  default:

   break;
  }
 }
 return E1000_SUCCESS;
}
