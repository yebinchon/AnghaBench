
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EEPROM_BUSY ;
 scalar_t__ EEPROM_READ ;
 int inw (unsigned int) ;
 int outw (scalar_t__,unsigned int) ;

__attribute__((used)) static u16 read_eeprom(unsigned int ioaddr, int index)
{
    int i;
    outw(EEPROM_READ + index, ioaddr + 10);

    for (i = 1620; i >= 0; i--)
 if ((inw(ioaddr + 10) & EEPROM_BUSY) == 0)
     break;
    return inw(ioaddr + 12);
}
