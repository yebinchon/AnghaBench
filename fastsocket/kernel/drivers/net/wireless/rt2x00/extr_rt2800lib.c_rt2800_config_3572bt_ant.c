
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rt2x00_dev {scalar_t__ curr_band; } ;


 int EEPROM_FREQ ;
 int EEPROM_FREQ_LED_MODE ;
 int GPIO_SWITCH ;
 int GPIO_SWITCH_0 ;
 int GPIO_SWITCH_1 ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 int LED_CFG ;
 int LED_CFG_G_LED_MODE ;
 int LED_CFG_LED_POLAR ;
 int LED_CFG_R_LED_MODE ;
 int MCU_BAND_SELECT ;
 int rt2800_mcu_request (struct rt2x00_dev*,int ,int,int,int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00_get_field16 (int ,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

__attribute__((used)) static void rt2800_config_3572bt_ant(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;
 u16 eeprom;
 u8 led_ctrl, led_g_mode, led_r_mode;

 rt2800_register_read(rt2x00dev, GPIO_SWITCH, &reg);
 if (rt2x00dev->curr_band == IEEE80211_BAND_5GHZ) {
  rt2x00_set_field32(&reg, GPIO_SWITCH_0, 1);
  rt2x00_set_field32(&reg, GPIO_SWITCH_1, 1);
 } else {
  rt2x00_set_field32(&reg, GPIO_SWITCH_0, 0);
  rt2x00_set_field32(&reg, GPIO_SWITCH_1, 0);
 }
 rt2800_register_write(rt2x00dev, GPIO_SWITCH, reg);

 rt2800_register_read(rt2x00dev, LED_CFG, &reg);
 led_g_mode = rt2x00_get_field32(reg, LED_CFG_LED_POLAR) ? 3 : 0;
 led_r_mode = rt2x00_get_field32(reg, LED_CFG_LED_POLAR) ? 0 : 3;
 if (led_g_mode != rt2x00_get_field32(reg, LED_CFG_G_LED_MODE) ||
     led_r_mode != rt2x00_get_field32(reg, LED_CFG_R_LED_MODE)) {
  rt2x00_eeprom_read(rt2x00dev, EEPROM_FREQ, &eeprom);
  led_ctrl = rt2x00_get_field16(eeprom, EEPROM_FREQ_LED_MODE);
  if (led_ctrl == 0 || led_ctrl > 0x40) {
   rt2x00_set_field32(&reg, LED_CFG_G_LED_MODE, led_g_mode);
   rt2x00_set_field32(&reg, LED_CFG_R_LED_MODE, led_r_mode);
   rt2800_register_write(rt2x00dev, LED_CFG, reg);
  } else {
   rt2800_mcu_request(rt2x00dev, MCU_BAND_SELECT, 0xff,
        (led_g_mode << 2) | led_r_mode, 1);
  }
 }
}
