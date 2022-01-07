
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int eeprom; } ;


 int EEPROM_SIZE ;
 scalar_t__ rt2800_efuse_detect (struct rt2x00_dev*) ;
 int rt2800_read_eeprom_efuse (struct rt2x00_dev*) ;
 int rt2x00usb_eeprom_read (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static int rt2800usb_read_eeprom(struct rt2x00_dev *rt2x00dev)
{
 int retval;

 if (rt2800_efuse_detect(rt2x00dev))
  retval = rt2800_read_eeprom_efuse(rt2x00dev);
 else
  retval = rt2x00usb_eeprom_read(rt2x00dev, rt2x00dev->eeprom,
            EEPROM_SIZE);

 return retval;
}
