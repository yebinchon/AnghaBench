
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int dummy; } ;


 int EEPROM_SIZE ;
 int rt2800_efuse_read (struct rt2x00_dev*,unsigned int) ;

int rt2800_read_eeprom_efuse(struct rt2x00_dev *rt2x00dev)
{
 unsigned int i;

 for (i = 0; i < EEPROM_SIZE / sizeof(u16); i += 8)
  rt2800_efuse_read(rt2x00dev, i);

 return 0;
}
