
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {int vgc_level; } ;


 int EEPROM_BBPTUNE_R24 ;
 int EEPROM_BBPTUNE_R24_LOW ;
 int EEPROM_BBPTUNE_R25 ;
 int EEPROM_BBPTUNE_R25_LOW ;
 int EEPROM_BBPTUNE_R61 ;
 int EEPROM_BBPTUNE_R61_LOW ;
 int EEPROM_BBPTUNE_VGC ;
 int EEPROM_BBPTUNE_VGCUPPER ;
 int rt2500usb_bbp_write (struct rt2x00_dev*,int,int ) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00_get_field16 (int ,int ) ;

__attribute__((used)) static void rt2500usb_reset_tuner(struct rt2x00_dev *rt2x00dev,
      struct link_qual *qual)
{
 u16 eeprom;
 u16 value;

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE_R24, &eeprom);
 value = rt2x00_get_field16(eeprom, EEPROM_BBPTUNE_R24_LOW);
 rt2500usb_bbp_write(rt2x00dev, 24, value);

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE_R25, &eeprom);
 value = rt2x00_get_field16(eeprom, EEPROM_BBPTUNE_R25_LOW);
 rt2500usb_bbp_write(rt2x00dev, 25, value);

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE_R61, &eeprom);
 value = rt2x00_get_field16(eeprom, EEPROM_BBPTUNE_R61_LOW);
 rt2500usb_bbp_write(rt2x00dev, 61, value);

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE_VGC, &eeprom);
 value = rt2x00_get_field16(eeprom, EEPROM_BBPTUNE_VGCUPPER);
 rt2500usb_bbp_write(rt2x00dev, 17, value);

 qual->vgc_level = value;
}
