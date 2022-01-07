
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEPROM_Read ;
 scalar_t__ Wn0EepromCmd ;
 scalar_t__ Wn0EepromData ;
 unsigned short inw (scalar_t__) ;
 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static unsigned short read_eeprom(unsigned int ioaddr, int index)
{
 int timer;
 outw(EEPROM_Read + index, ioaddr + Wn0EepromCmd);

 for (timer = 1620; timer >= 0; timer--) {
  if ((inw(ioaddr + Wn0EepromCmd) & 0x8000) == 0)
   break;
 }
 return inw(ioaddr + Wn0EepromData);
}
