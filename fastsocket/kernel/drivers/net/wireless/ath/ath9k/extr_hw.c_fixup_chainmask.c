
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 fixup_chainmask(u8 chip_chainmask, u8 eeprom_chainmask)
{
 eeprom_chainmask &= chip_chainmask;
 if (eeprom_chainmask)
  return eeprom_chainmask;
 else
  return chip_chainmask;
}
