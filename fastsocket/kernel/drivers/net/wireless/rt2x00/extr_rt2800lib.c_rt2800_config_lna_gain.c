
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int channel; } ;
struct rt2x00lib_conf {TYPE_1__ rf; } ;
struct rt2x00_dev {short lna_gain; } ;


 int EEPROM_LNA ;
 int EEPROM_LNA_A0 ;
 int EEPROM_LNA_BG ;
 int EEPROM_RSSI_A2 ;
 int EEPROM_RSSI_A2_LNA_A2 ;
 int EEPROM_RSSI_BG2 ;
 int EEPROM_RSSI_BG2_LNA_A1 ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ,int *) ;
 short rt2x00_get_field16 (int ,int ) ;

__attribute__((used)) static void rt2800_config_lna_gain(struct rt2x00_dev *rt2x00dev,
       struct rt2x00lib_conf *libconf)
{
 u16 eeprom;
 short lna_gain;

 if (libconf->rf.channel <= 14) {
  rt2x00_eeprom_read(rt2x00dev, EEPROM_LNA, &eeprom);
  lna_gain = rt2x00_get_field16(eeprom, EEPROM_LNA_BG);
 } else if (libconf->rf.channel <= 64) {
  rt2x00_eeprom_read(rt2x00dev, EEPROM_LNA, &eeprom);
  lna_gain = rt2x00_get_field16(eeprom, EEPROM_LNA_A0);
 } else if (libconf->rf.channel <= 128) {
  rt2x00_eeprom_read(rt2x00dev, EEPROM_RSSI_BG2, &eeprom);
  lna_gain = rt2x00_get_field16(eeprom, EEPROM_RSSI_BG2_LNA_A1);
 } else {
  rt2x00_eeprom_read(rt2x00dev, EEPROM_RSSI_A2, &eeprom);
  lna_gain = rt2x00_get_field16(eeprom, EEPROM_RSSI_A2_LNA_A2);
 }

 rt2x00dev->lna_gain = lna_gain;
}
